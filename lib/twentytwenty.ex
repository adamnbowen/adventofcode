defmodule TwentyTwenty do
  def day1part1(expense_report) do
    inputs =
      expense_report
      |> String.split("\n")
      |> Enum.filter(fn string -> string != "" end)
      |> Enum.map(&String.to_integer/1)

    inputs
    |> Stream.filter(fn input ->
      inputs
      |> Enum.find(fn other_input ->
        input + other_input == 2020
      end)
    end)
    |> Enum.reduce(fn x, accumulator -> x * accumulator end)
  end

  def day1part2(expense_report) do
    inputs =
      expense_report
      |> String.split("\n")
      |> Enum.filter(fn string -> string != "" end)
      |> Enum.map(&String.to_integer/1)

    inputs
    |> Stream.filter(fn input ->
      inputs
      |> Enum.find(fn second_input ->
        inputs
        |> Enum.find(fn third_input ->
          input + second_input + third_input == 2020
        end)
      end)
    end)
    |> Enum.reduce(fn x, accumulator -> x * accumulator end)
  end
end
