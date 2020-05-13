defmodule PhxApi.HttpAdapter do
  @callback request(req :: HTTPoison.Request.t()) :: tuple()
end
