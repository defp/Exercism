defmodule BirdCount do
  def today([]) do
    nil
  end

  def today([head | _tail]) do
    head
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?(list) do
    Enum.any?(list, fn x -> x == 0 end)
  end

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days(list) do
    Enum.filter(list, fn x -> x >= 5 end) |> length()
  end
end
