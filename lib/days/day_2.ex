defmodule Day2 do
  def isSafe(report) do
    chunks =
      Enum.chunk_every(report, 2, 1, :discard)
      |> Enum.map(&List.to_tuple/1)

    Enum.all?(chunks, fn {a, b} -> a > b and 1 <= a - b and a - b <= 3 end) or
      Enum.all?(chunks, fn {a, b} -> a < b and 1 <= b - a and b - a <= 3 end)
  end

  def solvePart1(fileName) do
    reports = InputParser.day2(fileName)

    reports |> Enum.map(&isSafe/1) |> Enum.filter(fn x -> x == true end) |> Enum.count()
  end
end
