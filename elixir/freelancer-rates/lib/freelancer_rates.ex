defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    total = daily_rate(hourly_rate) * 22
    ceil(total * (100 - discount) / 100)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    day = budget / apply_discount(daily_rate(hourly_rate), discount)
    Float.floor(day, 1)
  end
end
