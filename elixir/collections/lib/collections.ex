defmodule Collections do

  # tupla = {valor1, valor2, ...}
  def dois_valores do
    {:rand.uniform(100), :rand.uniform(100)}
  end

  def lorem do
    {:rand.uniform(100), 9}
  end

  # lista = [valor1, valor2, ...]
  def exibir_lista([]) do
  end

  def exibir_lista([valor]) do
    IO.puts(valor)
  end

  def exibir_lista([cabeca|cauda]) do
    IO.puts(cabeca)
    exibir_lista(cauda)
  end

  # mapa
  def mapa do

  end
end
