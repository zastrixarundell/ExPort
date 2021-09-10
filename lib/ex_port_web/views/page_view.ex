defmodule ExPortWeb.PageView do
  use ExPortWeb, :view

  @spec years_old :: non_neg_integer()
  def years_old do
    Timex.diff(Date.utc_today(), Date.from_iso8601!(System.get_env("BIRTHDAY")), :years)
  end
end
