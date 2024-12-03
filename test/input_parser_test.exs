defmodule InputParserTest do
  use ExUnit.Case
  doctest InputParser

  test "parse question 1 input" do
    assert InputParser.day1("day_1_test.txt") == {[3, 4, 2, 1, 3, 3], [4, 3, 5, 3, 9, 3]}
  end
end
