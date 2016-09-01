defmodule ExNerdBeers.ApiMock do
  def make_request(:get, "/agenda/all") do
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
