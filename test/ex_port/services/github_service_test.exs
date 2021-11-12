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
      assert {:ok, data} = GithubService.repositories("zastrixarundell")
      assert is_list(data)
    end
  end

end
