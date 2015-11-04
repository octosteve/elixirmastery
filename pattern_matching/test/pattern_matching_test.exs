defmodule PatternMatchingTest do
  use ExUnit.Case
  doctest PatternMatching

  @characters [
    %{name: "Han",        type: :human,   rebel: true,    weight: 185},
    %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
    %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
    %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
    %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
    %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
  ]

  test "returns wookie name" do
    assert PatternMatching.wookie_name(@characters)
  end

  test "adds weight to Han" do
    new_han = PatternMatching.embarrass_han(@characters)
    assert new_han.weight == 200
  end

  test "get humans" do
    assert PatternMatching.get_humans(@characters) == ["Han", "Luke", "Boba Fett"]
  end

  test "get skinny folks" do
    assert PatternMatching.get_skinny_folks(@characters) ==   [%{name: "Luke",       type: :human,   rebel: true,    weight: 140},
      %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175}]
  end
end
