defmodule UserServerTest do
  use ExPort.DataCase, async: true

  alias ExPort.Servers.UserCache
  alias ExPort.Accounts

  import ExPort.AccountsFixtures

  setup do
    user_fixture()
    cache = start_supervised!(UserCache)
    on_exit(fn -> stop_supervised(UserCache) end)
    %{cache: cache}
  end

  # user_info/0 works the same as user_info/1
  describe "user_info/1" do
    test "returns nil when user doesn't exist", %{cache: cache} do
      # This is the only test which doesn't need the user info.
      Accounts.first_user!() |> Accounts.delete_user()

      assert Accounts.first_user!() == nil

      stop_supervised(UserCache)
      {status, _} = start_supervised(UserCache)

      assert status == :ok

      assert UserCache.user_info(cache) == nil
    end

    test "returns real user", %{cache: cache} do
      user = Accounts.first_user!()

      assert UserCache.user_info(cache) == user
    end
  end

end
