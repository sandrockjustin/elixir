defmodule Enumerables do

  def map_filter_reduce(list) do

    if Enum.empty?(list) do
      {:error, "aborted because list is empty"}
    end

    mapped = Enum.map(list, fn elm -> elm * 2 end)
    IO.inspect(mapped)
    filtered = Enum.filter(mapped, fn elm -> rem(elm, 3) == 0 end)
    IO.inspect(filtered)
    reduced = Enum.reduce(filtered, fn elm, accum -> elm + accum end)
    IO.inspect(reduced)
    reduced
  end

  def conditionals(list, x) do
    if Enum.empty?(list) do
      {:error, "aborted because list is empty"}
    else
      all = Enum.all?(list, x)
      any = Enum.any?(list, x)

      cond do
        all -> {:true, "all"}
        any -> {:true, "any"}
        true -> {:false, "no matches to conditional"}
      end
    end
  end

end
