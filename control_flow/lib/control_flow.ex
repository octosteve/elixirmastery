defmodule ControlFlow do
  def verify_readiness(%{has_seen_star_wars: true}), do: "Ready for class"
  def verify_readiness(%{has_seen_star_wars: false}), do: "Not ready"
  def is_a_fan?(%{has_seen_star_wars: status}) do
    if status do
      true
    else
      false
    end
  end
end
