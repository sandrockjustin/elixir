defmodule Types do

  def typeof(x) do
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

  def basic_types do
    string = "Hello World!"
    float = 27.2
    integer = 10
    boolean = true
    list = [1, 2, 3]
    tuple = {1, 2, 3}
  end

end
