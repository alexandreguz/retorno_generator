  defmodule RetornoGenerator do
    def generate(remessa, index) do
      retorno_start = String.slice(remessa, 0..28)
      blanks_1 = String.duplicate(" ", 33)
      nosso_numero = String.slice(remessa, 62..69)
      blanks_2 = String.duplicate(" ", 12)
      numero_carteira = "109"
      nosso_numero = String.slice(remessa, 62..69)
      dac_nosso_numero = String.slice(remessa, 28..28)
      blanks_3 = String.duplicate(" ", 13)
      codigo_da_carteira = "I"
      codigo_de_ocorrencia_variavel = "06" # 02 - entrada, 03 - rejeitado, 04 - alteracao de dados, 06 - liquidado, 09 - baixa simples, 14 - vencimento alterado,
      today = Date.utc_today
      day = today.day |> Integer.to_string() |> String.pad_leading(2, "0")
      month = today.month |> Integer.to_string() |> String.pad_leading(2, "0")
      year = today.year |> Integer.to_string() |> String.slice(2..3)
      data_da_ocorrencia = day <> month <> year
      numero_do_documento = String.slice(remessa, 110..119)
      nosso_numero = String.slice(remessa, 62..69)
      blanks_4 = String.duplicate(" ", 12)
      due_date = String.slice(remessa, 120..125)
      value = String.slice(remessa, 126..138)
      bank_code = "001"
      branch = "3421"
      dac_branch = "5"
      kind = "05" #most
      zeros_1 = String.duplicate("0", 78)
      main_value = String.slice(remessa, 126..138)
      zeros_2 = String.duplicate("0", 26)
      blanks_5 = String.duplicate(" ", 3)
      #payment_day = "DDMMYY" # if codigo_ocorrencia_variavel = 06
      today = Date.utc_today
      day = today.day |> Integer.to_string() |> String.pad_leading(2, "0")
      month = today.month |> Integer.to_string() |> String.pad_leading(2, "0")
      year = today.year |> Integer.to_string() |> String.slice(2..3)
      payment_day = day <> month <> year
      zeros_3 = String.duplicate("0", 23)
      sacado_name = String.slice(remessa, 234..263)
      blanks_6 = String.duplicate(" ", 38)
      liquidation_code = "B3" # This can vary but is not important
      senquencial_number = (index  + 1) |> Integer.to_string() |> String.pad_leading(6, "0")




      retorno_start <> blanks_1 <> nosso_numero <> blanks_2 <> numero_carteira <> nosso_numero <> dac_nosso_numero <> blanks_3 <> codigo_da_carteira <> codigo_de_ocorrencia_variavel <> data_da_ocorrencia <> numero_do_documento <> nosso_numero <> blanks_4 <> due_date <> value <> bank_code <> branch <> dac_branch <> kind <> zeros_1 <> main_value <>zeros_2 <> blanks_5 <> payment_day <> zeros_3 <> sacado_name <> blanks_6 <> liquidation_code <> senquencial_number



    end
  end


RetornoGenerator.generate()
