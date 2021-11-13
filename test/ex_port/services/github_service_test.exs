defmodule ExPort.GithubServiceTest do
  use ExUnit.Case, async: true

  alias ExPort.Services.GithubService

  setup do
    Mox.stub_with(ExPort.GithubApiMock, ExPort.GithubApiStub)
    :ok
  end

  describe "repositories/1" do
    test "returns information about all repos for a user" do
      assert {:ok, data} = GithubService.repositories("zastrixarundell")
      assert is_list(data)
    end
  end

  describe "repositories/2" do
    test "returns information about language-specific repos for a user" do
      assert {:ok, data} = GithubService.repositories("zastrixarundell", "Elixir")
      assert is_list(data)

      to_check_with = %{
        archived: false,
        created_at: ~U[2020-03-27 21:14:43Z],
        forks: 0,
        language: "Elixir",
        name: "Catlixir",
        stars: 2,
        updated_at: ~U[2021-09-08 18:59:36Z],
        url: "https://github.com/zastrixarundell/Catlixir",
        description: "A Discord bot written in Elixir regarding... Cats!"
      }

      assert Map.equal?(Map.from_struct(List.first(data)), to_check_with)
    end
  end

end
