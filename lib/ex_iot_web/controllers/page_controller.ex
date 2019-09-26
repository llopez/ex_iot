defmodule ExIotWeb.PageController do
  use ExIotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
