defmodule TwoFer do
  def two_fer() do
    "One for you, one for me."
  end

  @spec two_fer(String.t()) :: String.t()
  def two_fer(name) when is_binary(name) do
    "One for #{name}, one for me."
  end
end
