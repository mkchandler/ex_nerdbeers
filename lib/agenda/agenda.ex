defmodule ExNerdBeers.Agenda do
  @nerdbeers_api Application.get_env(:ex_nerdbeers, :nerdbeers_api)

  def list do
    {:ok, response} = @nerdbeers_api.get_all_agendas("/agenda/all")
    response.body
  end

  def show(date) do
    {:ok, response} = @nerdbeers_api.get_agenda("/agenda?date=" <> date)
    response.body
  end
end
