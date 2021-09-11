defmodule ExPortWeb.LandingLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <h1>Zastrix</h1>
    """
  end
end
