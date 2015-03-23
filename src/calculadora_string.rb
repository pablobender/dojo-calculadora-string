class CalculadoraString
  def initialize
    @delimitador = ","
  end

  def somar entrada
    soma = 0
    requer_operando = false
    for i in 0..entrada.length - 1 do
      caractere_atual = entrada[i]
      next if caractere_atual == "0"
      requer_operando = ehDelimitador(caractere_atual)
      throw :entrada_invalida unless ("0".."9").include? caractere_atual or requer_operando
      soma += caractere_atual.to_i
    end

    throw :entrada_invalida if requer_operando

    soma
  end

  private
  def ehDelimitador caractere
     [@delimitador, "\n"].include? caractere
  end
end