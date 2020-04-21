defmodule RemessaParser do
   def parse(remessa) do
    remessa
    |> String.split("\n")
    |> List.delete_at(0)
    |> Enum.reverse()
    |> List.delete_at(0)
    |> Enum.reverse()
    |> Stream.with_index()
    |> Enum.map(fn {remessa_line, index} -> RetornoGenerator.generate(remessa_line, index) end)
    |> Enum.join("\n")
   end
end
