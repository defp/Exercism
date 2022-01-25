defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when is_integer(input) and input > 0 do
    calc_step(input, 0)
  end

  def calc_step(input, steps) when input == 1, do: steps

  def calc_step(input, steps) do
    if rem(input, 2) == 0 do
      calc_step(div(input, 2), steps + 1)
    else
      calc_step(input * 3 + 1, steps + 1)
    end
  end
end
