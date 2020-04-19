defmodule RemessaParser do
   def parse(remessa) do
    remessa
    |> String.split("\n")
    |> List.delete_at(0)
    |> Enum.reverse()
    |> List.delete_at(0)
    |> Enum.reverse()
    |> Enum.map(fn remessa_line -> RetornoGenerator.generate(remessa_line) end)
    |> Enum.join("\n")
   end
end


