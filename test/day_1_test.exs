defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "solves question 1" do
    assert Day1.solvePart1() == 1_189_304
  end

  test "solves question 2" do
    assert Day1.solvePart2() == 24_349_736
  end
end
