defmodule Tuples do

  # An example of how tuples are structured
  def createTuple(x, y, z) do
    {x, y, z}
  end

  # An example of how we access an index with elem()
  def atIndex(tuple, i) do
    elem(tuple, i)
  end

  # An example of using tuple_size() to check tuple "length"/size
  def getSize(tuple) do
    tuple_size(tuple)
  end

  def updateIndex(tuple, i, payload) do
    put_elem(tuple, i, payload)
  end

  def findAndUpdate(tuple, target, payload, i \\ 0) do

    # If we found target, updated
    if elem(tuple, i) === target do
      put_elem(tuple, i, payload)

    # Else we continue recursion
    else

      # While within bounds of tuple, continue search
      if i < tuple_size(tuple) - 1 do
        findAndUpdate(tuple, target, payload, i + 1)

      # Else log that this was not found and return the original
      else
        IO.puts("Target not found in tuple")
        tuple
      end
    end
  end

  # Prints out each value of a tuple through recursion
  def readTuple(tuple, i \\ 0, size \\ 0) do
    if size == 0 do
      IO.puts(elem(tuple, i))
      readTuple(tuple, i + 1, tuple_size(tuple))
    else
      if (i < size) do
        IO.puts(elem(tuple, i))
        readTuple(tuple, i + 1, size)
      else
        0
      end
    end
  end

  # NOTE: In Elixir, functions with the term "size" are constant time operations.
  # Functions with the term "length" are linear time operations.

end
