defmodule KitchenCalculator do
  def get_volume({_, numeric}) do
    numeric
  end

  def to_milliliter({:cup, numeric}) do
    {:milliliter, numeric * 240}
  end

  def to_milliliter({:fluid_ounce, numeric}) do
    {:milliliter, numeric * 30}
  end

  def to_milliliter({:tablespoon, numeric}) do
    {:milliliter, numeric * 15}
  end

  def to_milliliter({:teaspoon, numeric}) do
    {:milliliter, numeric * 5}
  end

  def to_milliliter({:milliliter, numeric}) do
    {:milliliter, numeric}
  end

  def from_milliliter({_, numeric}, :cup) do
    {:cup, numeric / 240}
  end

  def from_milliliter({_, numeric}, :fluid_ounce) do
    {:fluid_ounce, numeric / 30}
  end

  def from_milliliter({_, numeric}, :tablespoon) do
    {:tablespoon, numeric / 15}
  end

  def from_milliliter({_, numeric}, :teaspoon) do
    {:teaspoon, numeric / 5}
  end

  def from_milliliter({_, numeric}, :milliliter) do
    {:milliliter, numeric}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
