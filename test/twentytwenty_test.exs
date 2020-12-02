defmodule TwentyTwentyTest do
  use ExUnit.Case
  doctest TwentyTwenty

  test "day 1 part 1" do
    input = """
    1721
    979
    366
    299
    675
    1456
    """

    assert TwentyTwenty.day1part1(input) == 514_579
  end

  test "day 1 part 2" do
    input = """
    1721
    979
    366
    299
    675
    1456
    """

    assert TwentyTwenty.day1part2(input) == 241_861_950
  end
end
