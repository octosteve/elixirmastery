defmodule FunctionalProgramming do
  def main(args) do
    IO.inspect args
  end

  def first_word_from_fifth(lines) do
    lines
    |> String.split("\n")
    |> Enum.reject(&empty?/1)
    |> Enum.map(fn (s) ->
      String.split(s, ":")
      |> Enum.at(4)
      |> String.split
      |> Enum.at(0)
    end)
    |> Enum.uniq
    |> Enum.take(5)
  end

  defp empty?("") do
    true
  end

  defp empty?(_) do
    false
  end

  def find_by_type(characters, type) do
    do_find_by_type(characters, type, [])
  end

  defp do_find_by_type([], _type, acc) do
    acc
  end

  defp do_find_by_type([character| characters], type, acc) do
    if character.type == type do
      do_find_by_type(characters, type, [character| acc])
    else
      do_find_by_type(characters, type, acc)
    end
  end

end
