class Word

  attr_reader :word, :score, :syllable_count

  def initialize(response_hash)
    @word  = response_hash["word"]
    @score = response_hash["score"]
    @syllable_count = response_hash["numSyllables"]
  end

end
