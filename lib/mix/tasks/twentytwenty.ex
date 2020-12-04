defmodule Mix.Tasks.TwentyTwenty do
  @moduledoc """
  Run the examples for Advent of Code 2020
  """

  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    day_1_input =
      "lib/twentytwenty/day1.txt"
      |> File.read!()

    Mix.shell().info("Day 1, Part 1:")

    day_1_input
    |> TwentyTwenty.day1part1()
    |> Integer.to_string()
    |> Mix.shell().info()

    Mix.shell().info("Day 1, Part 2:")

    day_1_input
    |> TwentyTwenty.day1part2()
    |> Integer.to_string()
    |> Mix.shell().info()

    day_2_input =
      "lib/twentytwenty/day2.txt"
      |> File.read!()

    Mix.shell().info("Day 2, Part 1:")

    day_2_input
    |> TwentyTwenty.day2part1()
    |> Integer.to_string()
    |> Mix.shell().info()

    Mix.shell().info("Day 2, Part 2:")

    day_2_input
    |> TwentyTwenty.day2part2()
    |> Integer.to_string()
    |> Mix.shell().info()
  end
end
