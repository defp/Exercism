defmodule Secrets do
  @spec secret_add(number) :: (number -> number)
  def secret_add(secret) do
    fn params ->
      params + secret
    end
  end

  @spec secret_subtract(number) :: (number -> number)
  def secret_subtract(secret) do
    &(&1 - secret)
  end

  @spec secret_multiply(number) :: (number -> number)
  def secret_multiply(secret) do
    &(secret * &1)
  end

  @spec secret_divide(number) :: (number -> number)
  def secret_divide(secret) do
    fn params -> (params / secret) |> Kernel.trunc() end
  end

  def secret_and(secret) do
    fn params ->
      Bitwise.band(params, secret)
    end
  end

  @spec secret_xor(any) :: (integer -> integer)
  def secret_xor(secret) do
    fn params ->
      Bitwise.bxor(params, secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn params ->
      secret_function1.(params) |> secret_function2.()
    end
  end
end
