defmodule DroidTest do
  use ExUnit.Case
  doctest Droid
  import ExUnit.CaptureIO

  #  Write a function in a module that takes a map with :name and prints out the va

  test "prints droid name" do
    droid = %{name: "Sam"}
    assert capture_io(fn ->
      Droid.show_name(droid)
    end) == "Sam\n"
  end

  #  with a "-NG" appended to it since it's the NextGeneration ;) --

  test "appends ng" do
    droid = %{name: "Sam"}
    assert capture_io(fn ->
      Droid.upgrade(droid)
    end) == "Sam-NG\n"
  end
  #  Ensure it takes only maps that contain the :droid atom which is true

  #  Write another function with the (almost) same arguments that takes any name an
  #  if the :droid value is false
  test "verifies if you're a droid" do
    droid = %{name: "Sam", droid: true}
    bob = %{name: "Bob", droid: false}

    assert Droid.is_droid?(droid)
    refute Droid.is_droid?(bob)
  end

  # Write an function called greeter that returns a function that takes differing types and values and prints out
  # a different response to each. Try a map, a three elemnt tuple, an :atom and a string.
  # It should also take a fallthrough default value that returns :ok

  #  Write an & function using &1.... and sums 4 values
  test "sums numbers" do
    assert(Droid.sums([1,2,3,4])) == 10
  end

  # read up on _Enum.reduce_. Inside of iex How can you combine Enum.map and Enum.reduce to
  # take a list of numbers, double each of them and then sum them up.
  # Try the numbers 1,2,3,4 - that way you'll know the answer (20) and if you got it correct
  test "adds a list of numbers after doubling them" do
    assert(Droid.double_add([1,2,3,4])) == 20
  end
end
