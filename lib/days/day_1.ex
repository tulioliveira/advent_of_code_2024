defmodule Day1 do
  @spec solvePart1(String.t()) :: number()
  def solvePart1(fileName) do
    {list1, list2} = InputParser.day1(fileName)

    {sortedList1, sortedList2} = {list1 |> Enum.sort(), list2 |> Enum.sort()}

    Enum.zip(sortedList1, sortedList2) |> Enum.map(fn {x, y} -> abs(x - y) end) |> Enum.sum()
  end

  @spec solvePart2(String.t()) :: number()
  def solvePart2(fileName) do
    {list1, list2} = InputParser.day1(fileName)

    list1
    |> Enum.map(fn x -> (Enum.filter(list2, fn y -> x == y end) |> Enum.count()) * x end)
    |> Enum.sum()
  end
end
