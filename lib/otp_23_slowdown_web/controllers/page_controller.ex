defmodule Otp23SlowdownWeb.PageController do
  use Otp23SlowdownWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
