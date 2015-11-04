defmodule PipeOperatorTest do
  use ExUnit.Case
  doctest PipeOperator
  @characters [
    %{name: "Han",        type: :human,   rebel: true,    weight: 185},
    %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
    %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
    %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
    %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
    %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
  ]

  test "returns all rebels" do
    assert PipeOperator.get_rebels(@characters) == [
      %{name: "Han",        type: :human,   rebel: true,    weight: 185},
      %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
      %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
    ]
  end

  test "fill Millenium Falcon with rebels" do
    assert PipeOperator.fill_falcon(@characters) == ["Han", "Chewie", "Luke"]
  end

  test "gets all weight for a type" do
    assert PipeOperator.weight_for_humans(@characters, :human) == 500
  end

end
