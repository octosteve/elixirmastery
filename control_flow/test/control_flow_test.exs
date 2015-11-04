defmodule ControlFlowTest do
  use ExUnit.Case
  doctest ControlFlow

  test "tells you you're ready for class if you've seen star wars" do
    assert ControlFlow.verify_readiness(%{has_seen_star_wars: true}) ==  "Ready for class"
    assert ControlFlow.verify_readiness(%{has_seen_star_wars: false}) ==  "Not ready"
  end

  test "knows if you're a fan" do
    assert ControlFlow.is_a_fan?(%{has_seen_star_wars: true})
    refute ControlFlow.is_a_fan?(%{has_seen_star_wars: false})
  end
end
