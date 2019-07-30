defmodule ZomatoTest do
  use ExUnit.Case
  doctest Zomato

  test "greets the world" do
    assert Zomato.hello() == :world
  end
end
