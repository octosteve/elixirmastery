defmodule DataTypes do
#   Create a list with six star wars characters
  def six_elements do
    ["Han", "Leia", "Luke", "R2D2", "C3PO", "TonTon"]
  end

#   Get the third item out of the list
  def third_element do
    Enum.at six_elements, 2
  end

#   Create another list with three characters
#   bonus, make them atoms and at least one a tuple of atoms
  def three_elements do
    ["Chewbaca", "Darth Vader", {:phantom, "Darth Maul"}]
  end

#   Create a third list that contains both previous lists
  def both_lists do
    six_elements ++ three_elements
  end
#   Delete the seventh character
  def delete_seventh do
    List.delete_at both_lists, 6
  end

#   Add one more character to the list
  def add_one_more_character do
    ["Bobba Fett" | delete_seventh]
  end
#   use 'in' to check that a character exists

  def contains(character) do
    character in add_one_more_character
  end
  # Create a map with at least two key/value pairs. 
  # Some suggested ones are :name, :side. alliance should be :rebel or :imperial

  def create_character(name: name, side: side, alliance: alliance) do
    %{name: name, side: side, alliance: alliance}
  end

  # Print out the name and the side values

  def show_affiliation(character) do
    IO.puts "#{character.name} is affiliated with the #{character.side} side"
  end
  # Add a weight to each character

  def add_weight(character, weight) do
    Dict.put(character, :weight, weight)
  end

  # Update the alliance to its opposite
  def flip_side(%{name: name, alliance: alliance,  side: "dark"}) do
    %{name: name, alliance: alliance, side: "force"}
  end

  def flip_side(%{name: name, alliance: alliance,  side: "force"}) do
    %{name: name, alliance: alliance, side: "dark"}
  end
  # Create a LOM: list of maps of three characters
  # Update or replace the second item in the list with 'Jabba the Hutt' and :scum or :criminal as the side
end
