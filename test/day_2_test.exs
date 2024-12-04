defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

  test "solves example for question 1" do
    assert Day2.solvePart1("day_2_test.txt") == 2
  end

  test "solves question 1" do
    assert Day2.solvePart1("day_2.txt") == 369
  end
end
