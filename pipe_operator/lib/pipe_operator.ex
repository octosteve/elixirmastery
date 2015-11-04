defmodule PipeOperator do
  def get_rebels(characters) do
    characters |> Enum.filter(&(is_rebel?(&1)))
  end

  def is_rebel?(%{rebel: true} = c) do
    c.type != :droid
  end

  def is_rebel?(_), do: false

  def fill_falcon(characters) do
    for %{name: name} <- get_rebels(characters), do: name
  end

  def weight_for_humans(characters, type) do
    # weights = for c = %{type: :human} <- characters, do: c.weight
    # weights = for c  <- characters, c.type == type, do: c.weight
    # Enum.reduce(weights, &(&1 + &2))
    characters
    |> Enum.filter(&(&1.type == type))
    # |> Enum.map(&(&1.weight))
    # |> Enum.reduce(&(&1 + &2))
    |> Enum.map_reduce(0, &({&1.weight, &1.weight + &2 }))
    |> elem 1
  end
end
