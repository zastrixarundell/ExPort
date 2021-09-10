defmodule ExPort.AccountsTest do
  use ExPort.DataCase

  alias ExPort.Accounts

  describe "users" do
    alias ExPort.Accounts.User

    import ExPort.AccountsFixtures

    @invalid_attrs %{discord_token: nil, github_token: nil, spotify_token: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "first_user!/0 returns the first user" do
      user = user_fixture()
      new_user = user_fixture()

      assert Accounts.first_user!() == user
      refute Accounts.first_user!() == new_user
    end

    test "first_user!/0 does not reaise error if not present" do
      assert Accounts.first_user!() == nil
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{discord_token: "some discord_token", github_token: "some github_token", spotify_token: "some spotify_token"}

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.discord_token == "some discord_token"
      assert user.github_token == "some github_token"
      assert user.spotify_token == "some spotify_token"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{discord_token: "some updated discord_token", github_token: "some updated github_token", spotify_token: "some updated spotify_token"}

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.discord_token == "some updated discord_token"
      assert user.github_token == "some updated github_token"
      assert user.spotify_token == "some updated spotify_token"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end
end
