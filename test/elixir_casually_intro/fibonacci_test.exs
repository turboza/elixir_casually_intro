defmodule FibonacciTest do
  use ExUnit.Case

  doctest Fibonacci

  describe "fibonacci/1" do
    test "return 21 for input 8" do
      assert Fibonacci.fibonacci(8) == 21
    end
  end
end
