defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "solves for input" do
    assert Day1.solve() == 1189304
  end
end
