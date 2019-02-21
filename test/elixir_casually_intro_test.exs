defmodule ElixirCasuallyIntroTest do
  use ExUnit.Case
  doctest ElixirCasuallyIntro

  test "greets the world" do
    assert ElixirCasuallyIntro.hello() == :world
  end
end
