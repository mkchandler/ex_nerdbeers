defmodule ExNerdBeers.Agenda do
  @nerdbeers_api Application.get_env(:ex_nerdbeers, :nerdbeers_api)

  def list do
    {:ok, response} = @nerdbeers_api.make_request(:get, "/agenda/all")
    response.body
  end
end
