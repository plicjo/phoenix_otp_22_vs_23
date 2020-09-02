defmodule Otp23SlowdownWeb.PageControllerTest do
  use Otp23SlowdownWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
