defmodule Day1 do
  @cwd File.cwd!

  def solve() do
    input = @cwd <> "/lib/input.txt" \
      |> File.stream! \
      |> Enum.map(&String.trim/1) \
      |> Enum.map(fn(x) -> String.split(x, "   ") end)


    {list1, list2} = Enum.reduce(input, {[], []}, fn [x, y], acc ->
        {[String.to_integer(x) | acc |> elem(0) ], [String.to_integer(y) | acc |> elem(1) ]}
      end)

    {sortedList1, sortedList2} = {list1 |> Enum.sort(), list2 |> Enum.sort()}

    Enum.zip(sortedList1, sortedList2) |> Enum.map(fn {x, y} -> abs(x - y) end) |> Enum.sum()
  end
end
