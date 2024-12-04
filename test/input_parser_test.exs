defmodule InputParserTest do
  use ExUnit.Case
  doctest InputParser

  test "parse question 1 input" do
    expected = {[3, 4, 2, 1, 3, 3], [4, 3, 5, 3, 9, 3]}
    assert InputParser.day1("day_1_test.txt") == expected
  end

  test "parse question 2 input" do
    expected = [
      [7, 6, 4, 2, 1],
      [1, 2, 7, 8, 9],
      [9, 7, 6, 2, 1],
      [1, 3, 2, 4, 5],
      [8, 6, 4, 4, 1],
      [1, 3, 6, 7, 9]
    ]

    assert InputParser.day2("day_2_test.txt") == expected
  end
end
