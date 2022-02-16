defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position :: position) :: integer
  def score({x, y}) do
    d = :math.sqrt(x*x + y*y)
    score_dart(d)
  end

  def score_dart(d) when d <= 1, do: 10
  def score_dart(d) when d <= 5, do: 5
  def score_dart(d) when d <= 10, do: 1
  def score_dart(_), do: 0
end
