defmodule Revisao do
  def principal do
    IO.puts "1. Olá mundo!"
    IO.puts "2. Digite seu nome: "
    nome = IO.gets("") |> String.trim
    IO.puts "Olá #{nome}!"

    IO.puts "3. Digite seu nome: "
    nome = IO.gets("") |> String.trim
    IO.puts "Digite seu ano de nascimento: "
    ano_nascimento = IO.gets("") |> String.trim |> String.to_integer
    idade = DateTime.utc_now().year - ano_nascimento
    IO.puts "Olá #{nome}, você tem #{idade} anos."

    IO.puts "4. Digite seu nome: "
    nome = IO.gets("") |> String.trim
    IO.puts "Digite seu peso Kg: "
    peso = IO.gets("") |> String.trim |> String.to_float
    IO.puts "Digite sua altura em centímetros"
    altura = IO.gets("") |> String.trim |> String.to_float

    imc = calcular_imc(peso, altura)
    IO.puts "Olá #{nome}, seu IMC é de #{imc}."

    IO.puts "5. Digite uma sequência de números inteiros separados por espaço:"
    input = IO.gets("") |> String.trim() # Recebe a entrada e remove espaços extras
    numeros = String.split(input, " ") # Divide a entrada em uma lista de strings
    |> Enum.map(&String.to_integer/1) # Converte cada string para um número inteiro

    reversed_numbers = Enum.reverse(numeros)
    IO.puts "Números na ordem inversa: #{reversed_numbers}."

    IO.puts "6. Digite a quantidade de pares matrícula/nome: "
    quantidade = IO.gets("") |> String.trim |> Strin.to_integer
    alunos = ler_pares_matricula_nome(quantidade)
    IO.inspect alunos

  end

  defp calcular_imc(peso, altura) do
    altura_metros = altura / 100
    :math pow(peso / altura_metros, 2)
  end

  defp ler_pares_matricula_nome(quantidade) do

  end

  defp menu_crud() do

  end
end
