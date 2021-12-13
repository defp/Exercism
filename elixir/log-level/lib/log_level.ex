defmodule LogLevel do
  def to_label(level, true) do
    case level do
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      _ -> :unknown
    end
  end

  def to_label(level, false) do
    case level do
      0 -> :trace
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      5 -> :fatal
      _ -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      label == :error || label == :fatal -> :ops
      label == :unknown && legacy? -> :dev1
      label == :unknown && !legacy? -> :dev2
      true -> false
    end
  end
end
