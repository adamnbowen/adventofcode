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

  test "day 2 part 1" do
    input = """
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
    """

    assert TwentyTwenty.day2part1(input) == 2
  end

  test "day 2 part 2" do
    input = """
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
    """

    assert TwentyTwenty.day2part2(input) == 1
  end
end
