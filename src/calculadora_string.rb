require_relative 'caractere'

class CalculadoraString
  def initialize
    @delimitador = ','
  end

  def somar(entrada)
    soma = 0
    parametro_requerido = false
    entrada.each_char do |caractere_atual|
      caractere = Caractere.new caractere_atual
      parametro_requerido = caractere.requer_parametro @delimitador
      throw :entrada_invalida unless caractere.valido || parametro_requerido
      soma += caractere.to_i if caractere.valido
    end
    throw :entrada_invalida if parametro_requerido
    soma
  end
end
