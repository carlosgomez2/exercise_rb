class String
  def sentences
    self.gsub(/\n|r/, ' ').split(/\.\s*/)
  end
end

# %w{Hello. this is a test od basic sentence splitting. it even works over multiple lines}.sentences

class WordPlay

  def self.switch_pronouns(text)
    text.gsub(/\b()\b/i) do |pronoun|
      case pronoun.downcase
      when "i"
        "you"
      when "you"
        "me"
      when "i am"
        "you are"
      when "you are"
        "i am"
      when "your"
        "my"
      when "my"
        "your"
      end
    end.sub(/^me\b/i, 'i')
  end

  def self.best_sentence(sentences, desired_words)
    ranked_sentences = sentences.sort_by do |s|
      s.words.length - (s.downcase.words - desired_words).length
    end
    ranked_sentences.last
  end

end
