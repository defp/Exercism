defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_head | tail] = list
    tail
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    Enum.count(list)
  end

  def exciting_list?(list) do
    # Enum.any?(list, fn language -> language == "Elixir" end)
    "Elixir" in list
  end
end
