defmodule Types do

  def typeof(x) do

    # Essentially, a switch-case from JavaScript but different
    cond do
      is_integer(x) ->
        "integer"
      is_float(x) ->
        "float"
      is_boolean(x) ->
        "boolean"
      is_nil(x) ->
        "nil"
      is_list(x) ->
        "list"
      is_tuple(x) ->
        "tuple"
      is_function(x) ->
        "function"
      true ->
        "unknown type"
    end

  end

  def examples do
    string = "Hello World!"       # Strings are encoded in UTF-8
    concat = "Hello" <> "World!"  # Example string concatenation
    float = 27.2
    integer = 10
    boolean = true
    list = [1, 2, 3]              # Dynamic-length collection (linked-list)
    tuple = {1, 2, 3}             # Fixed-length collection
    :world                        # An atom is a constant, whose value is its own name

    IO.puts("String: #{typeof(string)}")
    IO.puts("Float: #{typeof(float)}")
    IO.puts("Integer: #{typeof(integer)}")
    IO.puts("Boolean: #{typeof(boolean)}")
    IO.puts("List: #{typeof(list)}")
    IO.puts("Tuple: #{typeof(tuple)}")
  end

  def match(x, y) do
    if (typeof(x) == typeof(y)) do
      true
    else
      false
    end
  end

  def mismatch(x, y) do
    if (typeof(x) != typeof(y)) do
      true
    else
      false
    end
  end

end
