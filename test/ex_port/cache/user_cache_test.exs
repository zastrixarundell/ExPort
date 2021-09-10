defmodule ExPort.UserCacheTest do
  use ExPort.DataCase

  alias ExPort.Cache.UserCache
  alias ExPort.Accounts.User

  import ExPort.AccountsFixtures

  describe "write_user/1" do
    test "safely writes to ETS cache" do
      user = user_fixture()

      assert UserCache.write_user(user) == true
      assert UserCache.read_user() == user
    end

    test "does not write nil into ETS" do
      assert UserCache.write_user(nil) == false
    end
  end

  describe "read_user!/0" do
    test "gives nil safely if empty" do
      assert UserCache.read_user() == nil
    end

    test "gives user information safely" do
      user = user_fixture()

      assert UserCache.read_user() == user
    end
  end
end
