defmodule HighScore do
  @high_score 0

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ @high_score) do
    Map.put(scores, name, score)
  end

  @spec remove_player(map, any) :: map
  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  @spec reset_score(map, any) :: map
  def reset_score(scores, name) do
    Map.put(scores, name, @high_score)
  end

  @spec update_score(map, any, number) :: map
  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn v ->  v + score end)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
