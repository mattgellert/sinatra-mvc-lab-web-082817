class PigLatinizer

  def initialize
  end

  def to_pig_latin(user_phrase)
    self.piglatinize(user_phrase)
  end

  def piglatinize(user_phrase)
    pig_words = []
    user_phrase.split(" ").map do |word|
      if word.split(/([AEIOUaeiou])/,2).reject { |e| e.to_s.empty? }.length == 3 || (word.split("").select{|x| x.match(/[AEIOUaeiou]/)}.length == 1 && word.index(/[aeiou]/) == word.length - 1 && word.length != 1)
        pig_word = word.split(/[AEIOUaeiou]/,2).reverse.join("").concat("ay").prepend(word.split(/([aeiou])/)[1])
      elsif word.split(/([AEIOUaeiou])/,2).reject { |e| e.to_s.empty? }.length == 2 || word.split(/([aeiou])/,2).reject { |e| e.to_s.empty? }.length == 1
        pig_word = word.split(/([aeiou])/,2).reject { |e| e.to_s.empty? }.join("").concat("way")
      end
      pig_words << pig_word
    end
    pig_words.join(" ")
  end


end
