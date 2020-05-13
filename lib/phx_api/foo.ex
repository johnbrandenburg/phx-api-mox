defmodule PhxApi.Foo do
  @http_client Application.get_env(:phx_api, :http_adapter)

  def bar() do
      @http_client.request(%HTTPoison.Request{url: "/api/v2/users"})
  end
end
