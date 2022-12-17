class Word
  #attr_accessor :phrase
  #def initialize(phrase)
    #@phrase=phrase
  #end
  def vowels_count(phrase) 
    vogal = "wWAÁÀÃÂaàáãâEÈÉÊeêéèIÍÌÎiìíîOÔÓÒÕoôóòõUÚÙÛuúùûyýYÝ"
    phrase.count(vogal)
  end
  def consonants_count(phrase)
    consoante = "BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz"
    phrase.count(consoante)
  end
end
