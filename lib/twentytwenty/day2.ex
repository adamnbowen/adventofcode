defmodule TwentyTwenty.Day2 do
  def part1(database) do
    database
    |> database_to_passwords_with_policies()
    |> Enum.filter(fn [lower_bound, upper_bound, character, password] ->
      validate_part1(lower_bound, upper_bound, character, password)
    end)
    |> Enum.count()
  end

  defp validate_part1(lower_bound, upper_bound, character, password) do
    character_count =
      password
      |> Enum.filter(fn password_character ->
        List.first(character) == password_character
      end)
      |> Enum.count()

    lower_bound <= character_count && character_count <= upper_bound
  end

  def part2(database) do
    database
    |> database_to_passwords_with_policies()
    |> Enum.filter(fn [first_position, second_position, character, password] ->
      validate_part2(first_position, second_position, character, password)
    end)
    |> Enum.count()
  end

  defp validate_part2(first_position, second_position, character, password) do
    present_in_first_position = List.first(character) == Enum.at(password, first_position - 1)
    present_in_second_position = List.first(character) == Enum.at(password, second_position - 1)

    (present_in_first_position && !present_in_second_position) ||
      (!present_in_first_position && present_in_second_position)
  end

  defp database_to_passwords_with_policies(database) do
    database
    |> String.split("\n")
    |> Enum.filter(fn string -> string != "" end)
    |> Enum.map(fn line ->
      [policy, password] = String.split(line, ": ")
      [range, character] = String.split(policy, " ")

      [lower_bound, upper_bound] = String.split(range, "-") |> Enum.map(&String.to_integer/1)

      [lower_bound, upper_bound, String.to_charlist(character), String.to_charlist(password)]
    end)
  end
end
