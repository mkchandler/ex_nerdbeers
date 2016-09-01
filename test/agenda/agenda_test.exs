defmodule ExNerdBeers.Agenda.Test do
  use ExUnit.Case, async: false

  setup_all do
    HTTPoison.start
  end

  test "get all agendas" do
    agendas = ExNerdBeers.Agenda.list
    assert Enum.count(agendas) > 1
  end

  test "get single agenda" do
    agenda = ExNerdBeers.Agenda.show("2016-09-01")
    assert Enum.count(agenda) == 1
  end
end
