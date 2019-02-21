defmodule Fibonacci do
  @doc """
  Normal Fibonacci function

  ## Examples
    iex> Fibonacci.fibonacci(0)
    0

    iex> Fibonacci.fibonacci(2)
    1

    iex> Fibonacci.fibonacci(3)
    2

    iex> Fibonacci.fibonacci(7)
    13
  """
  def fibonacci(n) do
    normal_fibo(n)
  end

  # Normal Fibo
  def normal_fibo(0), do: 0
  def normal_fibo(1), do: 1
  def normal_fibo(n), do: fibonacci(n - 1) + fibonacci(n - 2)

  # Fibo with guard
  def guard_fibo(n) when n < 2, do: n
  def guard_fibo(n), do: fibonacci(n - 1) + fibonacci(n - 2)

  # Tail-call optimized Fibo
  def tail_call_fibo(n), do: tail_call_fibo(0, 1, n)

  def tail_call_fibo(first, _second, 0), do: first
  def tail_call_fibo(_first, second, 1), do: second
  def tail_call_fibo(first, second, n), do: tail_call_fibo(second, first + second, n - 1)
end
