defmodule PhxApi.HttpClient do

  def request(req) do
    HTTPoison.request(req)
  end
end
