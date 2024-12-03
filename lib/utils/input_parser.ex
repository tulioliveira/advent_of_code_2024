defmodule InputParser do
  @cwd File.cwd!()

  def day1(fileName) do
    input =
      (@cwd <> "/inputs/" <> fileName)
      |> File.stream!()
      |> Enum.map(&String.trim/1)
      |> Enum.map(fn x -> String.split(x, "   ") end)

    with {list1, list2} =
           Enum.reduce(input, {[], []}, fn [x, y], acc ->
             {[String.to_integer(x) | acc |> elem(0)], [String.to_integer(y) | acc |> elem(1)]}
           end) do
      {list1 |> Enum.reverse(), list2 |> Enum.reverse()}
    end
  end
end
