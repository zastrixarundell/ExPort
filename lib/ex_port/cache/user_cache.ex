defmodule ExPort.Cache.UserCache do
  use GenServer

  alias ExPort.Services.SpotifyService
  alias ExPort.{Accounts, Accounts.User}

  @moduledoc """
  GenServer which is being used for the user cache.
  """

  # Client

  @doc false
  @spec start_link(keyword) :: :ignore | {:error, any} | {:ok, pid}
  def start_link(args) do
    if Keyword.get(args, :standalone, true) do
      GenServer.start_link(__MODULE__, [], name: __MODULE__)
    else
      GenServer.start_link(__MODULE__, [])
    end
  end

  @doc """
  Update the user. This is used to both save and read the User.
  """
  @spec update_user(User.t(), pid() | nil) :: User.t()
  def update_user(user, pid \\ nil) do
    GenServer.cast(pid || __MODULE__, {:update_user, user})
    user
  end

  @doc """
  Read the data for the user. Can return nil.
  """
  @spec read_user(pid() | nil) :: %User{}
  def read_user(pid \\ nil) do
    GenServer.call(pid || __MODULE__, :read_user)
  end

  @spec read_song(pid() | nil) :: %{}
  def read_song(pid \\ nil) do
    GenServer.call(pid || __MODULE__, :read_song)
  end

  # Server

  @impl true
  def handle_call(:read_song, _, {_, song} = state) do
    {:reply, song, state}
  end

  @impl true
  def handle_call(:read_user, _, {user, _} = state) do
    {:reply, user, state}
  end

  @impl true
  def handle_cast({:update_user, user}, _) do
    {:noreply, {user, nil}}
  end

  @impl true
  def handle_info(:spotify_sync, {user, _}) do
    song =
      case SpotifyService.currently_playing(user) do
        {:ok, meta} ->
          meta

        _ ->
          nil
        end

    schedule_sync()
    {:noreply, {user, song}}
  end

  @impl true
  def init(_) do
    schedule_sync()
    {:ok, {Accounts.first_user!(), nil}}
  end

  def schedule_sync(seconds \\ 2) do
    Process.send_after(self(), :spotify_sync, seconds * 1000)
  end
end
