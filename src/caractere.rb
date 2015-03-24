# encoding utf-8
class Caractere
  def initialize(caractere)
    @caractere = caractere
  end

  def valido
    ('0'..'9').include?(@caractere)
  end

  def requer_parametro(delimitador)
    [delimitador, "\n"].include? @caractere
  end

  def to_i
    @caractere.to_i
  end
end
