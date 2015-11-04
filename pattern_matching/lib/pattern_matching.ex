defmodule PatternMatching do
  def wookie_name([_,_,%{name: wookie_name},_,_,_]), do: wookie_name

  def embarrass_han([han | _rest]) do
    Map.put(han, :weight, 200)
  end

  # def get_humans([%{name: han},_,_,_,%{name: luke}, %{name: boba}]) do
  def get_humans(characters) do
    # Enum.filter(characters, &(&1.type == :human)) |> Enum.map(&(&1.name))
    # [han, luke, boba]
    for %{type: :human, name: name} <- characters, do: name
  end

  def get_skinny_folks(characters) do
    for c <- characters, c.weight < 180, do: c
  end
end
