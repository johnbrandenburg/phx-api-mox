defmodule PhxApi.FooTest do
  use PhxApiWeb.ConnCase, async: true
  import Mox

  alias PhxApi.Foo

  setup :verify_on_exit!

  test "mocks api" do
    PhxApi.HttpMock
    |> expect(:request, fn _req ->
      {:ok, %HTTPoison.Response{status_code: 200}}
    end)

    assert Foo.bar() == {:ok, %HTTPoison.Response{status_code: 200}}
  end
end
