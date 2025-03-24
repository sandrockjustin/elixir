defmodule StringManipulation do

  def concat(x, y) do
    x <> y
  end

  def interpolation_example(x) do
    "Hello, #{x}!"
  end

  # Remember that each character may be represented by multiple bytes
  # This is a check to see how many bytes are used by a string
  def bytes(x) do
    byte_size(x)
  end

  def length(x) do
    String.length(x)
  end

  def byte_vs_length(x) do
    byte_size(x) === String.length(x)
  end

end
