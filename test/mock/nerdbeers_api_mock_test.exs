defmodule ExNerdBeers.ApiMock do
  def get_agenda("/agenda?date=2016-09-01") do
    {:ok, %{
      body: [%{}]
    }}
  end

  def get_all_agendas("/agenda/all") do
    {:ok, %{
      body: [
        %{
          "id" => 1,
          "meeting_date" => "2013-08-22T17:30:00.000Z"
        },
        %{
          "id" => 2,
          "meeting_date" => "2013-09-22T17:30:00.000Z"
        }
      ]
    }}
  end
end
