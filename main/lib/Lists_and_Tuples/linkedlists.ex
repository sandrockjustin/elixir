# https://hexdocs.pm/elixir/lists-and-tuples.html#linked-lists

defmodule LinkedLists do

  # Receives two lists, returns new list
  def concat(list1, list2) do
    list1 ++ list2
  end

  # Removes first matching element of list2 from list1
  # [1, 2, 3, 4] -- [2, 4] => [1, 3]
  # [1, 2, 2, 3, 4, 4] -- [2, 4] => [1, 2, 3, 4]
  def trunc(list1, list2) do
    list1 -- list2
  end

  # Gets the head of a linked list
  # For fun, try passing in an empty list!
  def head(list) do
    hd(list)
  end

  # Gets the tail of the provided linked list
  def tail(list) do
    tl(list)
  end

  # If Elixir observes a list of printable ASCII numbers
  # They can be printed as a charlist!
  def charlist do
    IO.puts([104, 101, 108, 108, 111])
  end

end
