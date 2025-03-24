defmodule Conditionals do

  def bool_and(x, y) do
    x and y
  end

  def bool_or(x, y) do
    x or y
  end

  def bool_not(x) do
    not x
  end

  def std_and(x, y) do
    x && y
  end

  def std_or(x, y) do
    x || y
  end

  def std_not(x, y) do
    !x
  end

  def strictly_equal(x, y) do
    x === y
  end

  def strictly_inequal(x, y) do
    x !== y
  end

  def loosely_equal(x, y) do
    x == y
  end

  def loosely_inequal do
    x != y
  end

  # This exists as a reminder that 0 is a truthy value in Elixir
  def true_zero do
    if (0) do
      IO.puts("Zero is truthy!")
    else
      IO.puts("Zero is falsy!")
    end
  end

  # This exists as a reminder that empty strings are truthy
  def true_empty_string do
    if ("") do
      IO.puts("String has no length, but is truthy!")
    else
      IO.puts("String has no length, so it is falsy!")
    end
  end

end
