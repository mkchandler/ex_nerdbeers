defmodule ExNerdBeers do
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []
    opts = [strategy: :one_for_one, name: ExNerdBeers.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def headers do
    %{
      "Content-type" => "application/json"
    }
  end

  def make_request(:get, url) do
    get(url, headers)
  end

  def process_url(endpoint) do
    "http://nerdbeers.com/api/" <> endpoint
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
