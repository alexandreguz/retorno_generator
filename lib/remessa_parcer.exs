defmodule RemessaParser do
   def parse() do
      {:ok, content} = File.read("remessa.REM")

      result = content
      |> String.split("\n")
      |> List.delete_at(0)
      |> Enum.reverse()
      |> List.delete_at(0)
      |> Enum.reverse()
      |> Stream.with_index()
      |> Enum.map(fn {remessa_line, index} -> RetornoGenerator.generate(remessa_line, index) end)
      |> Enum.join("\n")

      File.write("retorno.RET", result)
   end
end

RemessaParser.parse()
