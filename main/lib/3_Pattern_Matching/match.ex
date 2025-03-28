defmodule Match do

  def destructureExample do
    {a, b, c} = {:hello, "world", 42}
    IO.inspect([a, b, c]) # Notice the use of inspect here
  end

  def dissectList(x) do
    [head | tail] = x
    IO.puts("Head: #{head} | Tail: #{tail}")
  end

  def responseOk do
    {:ok, contents} = {:ok, [1, 2, 3]}
    IO.inspect(contents)
  end

  # Only activates if first element matches :error atom
  def responseHandler({:error, errmsg}) do
    IO.puts(errmsg)
  end

  # Only activates if first element matches :ok atom
  def responseHandler({:ok, contents}) do
    IO.inspect(contents)
  end

  # Activates with any other tuple
  def responseHandler(tuple) do
    {status, contents} = tuple
    case status do
      :ok -> IO.inspect(contents)
      _ -> IO.puts("Unknown status")
    end
  end

  # Does nothing, but shows off the pin operator
  def isThirteen(x) do
    ^x = 13
  end

end
