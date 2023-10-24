defmodule Equacao2Grau do
    import :math

    def calcular(a, b, c) when a != 0 do
    delta = :math.pow(b, 2) - 4 * a * c

    if delta < 0 do
      "Equação não possui raízes reais."
    else
      x1 = (-b + :math.sqrt(delta)) / (2 * a)
      x2 = (-b - :math.sqrt(delta)) / (2 * a)

      if delta == 0 do
        "Equação possui uma raiz real: x = #{x1}"
      else
        "A equação possui duas raízes reais: x1 = #{x1} e x2 = #{x2}"
      end
    end
  end

end
