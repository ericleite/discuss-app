defmodule Discuss.LayoutView do
  use Discuss.Web, :view

  @doc """
  Sets active class if path is currently active
  """
  @spec get_active_class(Plug.Conn.t(), String.t(), String.t(), String.t()) :: String.t()
  def get_active_class(conn, path, defaultClass, activeClass) do
    if path == conn.request_path do
      defaultClass <> " " <> activeClass
    else
      defaultClass
    end
  end
end
