defmodule DataTypesTest do
  use ExUnit.Case
  doctest DataTypes
  import ExUnit.CaptureIO

  test "creates a list of six characters" do
    assert (length DataTypes.six_elements) == 6
  end

  test "returns the third element" do
    assert DataTypes.third_element == "Luke"
  end

  test "creates a separate list with 3 characters" do
    assert (length DataTypes.three_elements) == 3
  end

  test "combines both lists" do
    assert (length DataTypes.both_lists) == 9
  end

  test "deletes seventh" do
    assert DataTypes.delete_seventh == ["Han", "Leia", "Luke", "R2D2", "C3PO", "TonTon", "Darth Vader", {:phantom, "Darth Maul"}]
  end

  test "adds one more character" do
    assert (length DataTypes.add_one_more_character ) == 9
  end

  test "checks if character exists" do
    assert DataTypes.contains("Bobba Fett")
    refute DataTypes.contains("Bob the Fisherman")
  end

  test "creates a character" do
    character = DataTypes.create_character(name: "Steven", side: "dark", alliance: "rebel")
    assert character.name == "Steven"
    assert character.side == "dark"
    assert character.alliance == "rebel"
  end

  test "prints association" do
    character = DataTypes.create_character(name: "Steven", side: "dark", alliance: "rebel")
    assert capture_io(fn ->
      DataTypes.show_affiliation(character)
    end) == "Steven is affiliated with the dark side\n"
  end

  test "adds weight to character" do
    character = DataTypes.create_character(name: "Steven", side: "dark", alliance: "rebel")
    refute Dict.get character, :weight
    assert DataTypes.add_weight(character, 200) |> Dict.get(:weight) == 200
  end

  test "flips character side" do
    dark_side = DataTypes.create_character(name: "Steven", side: "dark", alliance: "rebel")
    force_side = DataTypes.create_character(name: "Tom", side: "force", alliance: "imperial")

    assert(DataTypes.flip_side(dark_side).side) == "force"
    assert(DataTypes.flip_side(force_side).side) == "dark"
  end
end
