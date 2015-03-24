class Caractere
  def initialize(caractere)
    @caractere = caractere
  end

  def caractere_valido
    ('0'..'9').include? @caractere
  end

  def eh_delimitador(delimitador)
    [delimitador, "\n"].include? @caractere
  end

  def eh_zero
    @caractere == '0'
  end

  def to_i
    @caractere.to_i
  end
end
