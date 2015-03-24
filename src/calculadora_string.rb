require_relative 'caractere'

class CalculadoraString
  def initialize
    @delimitador = ','
  end

  def somar(entrada)
    soma = 0
    requer_operando = false
    entrada.each_char do |caractere_atual|
      caractere = Caractere.new caractere_atual
      next if caractere.eh_zero
      requer_operando = caractere.eh_delimitador @delimitador
      throw :entrada_invalida unless caractere.caractere_valido || requer_operando
      soma += caractere.to_i
    end
    throw :entrada_invalida if requer_operando
    soma
  end
end
