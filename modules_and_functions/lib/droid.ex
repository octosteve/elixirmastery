defmodule Droid do
  def show_name(%{name: name}) do
    IO.puts name
  end

  def upgrade(%{name: name}) do
    show_name(%{name: name <> "-NG"})
  end

  def is_droid?(%{droid: true}), do: true
  def is_droid?(%{droid: false}), do: false

  def double_add(numbers) do
    Enum.map(numbers, &(&1 * 2)) |> sums
  end

  def sums(numbers) do
    Enum.reduce(numbers, &(&1 + &2))
  end
end
