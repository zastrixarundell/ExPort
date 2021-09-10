defmodule ExPort.Cache.UserCacheTest do
  use ExPort.DataCase

  alias ExPort.Cache.UserCache
  alias ExPort.Accounts.User

  import ExPort.AccountsFixtures

  setup do
    UserCache.update_user(nil)
    :ok
  end

  describe "read_user" do
    test "returns nil safely if user is not present" do
      assert UserCache.read_user() == nil
    end

    test "returns user when saved" do
      user = user_fixture()
      UserCache.update_user(user)
      assert UserCache.read_user() == user
    end
  end

  describe "update_user" do
    test "does not raise error if user does not exist already" do
      user = user_fixture()
      UserCache.update_user(user)

      assert UserCache.read_user() == user
    end

    test "succesfully updates existing user" do
      user = user_fixture()
      UserCache.update_user(user)

      user = %User{user | spotify_token: "new token"}

      UserCache.update_user(user)

      assert UserCache.read_user() == user
    end
  end

end
