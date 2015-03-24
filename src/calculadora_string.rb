require_relative 'caractere'

class CalculadoraString
  def initialize
    @delimitador = ','
  end

  def somar(entrada)
    soma = 0
    @parametro_requerido = false
    entrada.each_char do |caractere_atual|
      caractere = Caractere.new caractere_atual
      validar_caractere caractere
      soma += caractere.to_i
    end
    throw :entrada_invalida if @parametro_requerido
    soma
  end

  private

  def validar_caractere(caractere)
    unless caractere.eh_zero
      @parametro_requerido = caractere.eh_delimitador @delimitador
      throw :entrada_invalida unless caractere.caractere_valido || @parametro_requerido
    end
    true
  end
end
