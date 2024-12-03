defmodule Day1 do
  @spec solvePart1() :: number()
  def solvePart1() do
    {list1, list2} = InputParser.day1("day_1.txt")

    {sortedList1, sortedList2} = {list1 |> Enum.sort(), list2 |> Enum.sort()}

    Enum.zip(sortedList1, sortedList2) |> Enum.map(fn {x, y} -> abs(x - y) end) |> Enum.sum()
  end

  @spec solvePart2() :: number()
  def solvePart2() do
    {list1, list2} = InputParser.day1("day_1.txt")

    list1
    |> Enum.map(fn x -> (Enum.filter(list2, fn y -> x == y end) |> Enum.count()) * x end)
    |> Enum.sum()
  end
end
