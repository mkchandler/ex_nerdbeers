defmodule ExNerdBeers.Agenda.Test do
  use ExUnit.Case, async: false

  setup_all do
    HTTPoison.start
  end

  test "get all agendas" do
    assert agendas = ExNerdBeers.Agenda.list
    assert Enum.count(agendas) > 1
  end

  @tag todo: true
  test "get single agenda" do
    response = ExNerdBeers.Agenda.show
    assert Enum.count(response) == 1
  end
end
