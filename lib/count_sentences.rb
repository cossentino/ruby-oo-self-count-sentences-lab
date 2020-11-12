require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?

    self[-1] == "?" ? true : false

  end

  def exclamation?

    self[-1] == "!" ? true : false

  end

  def count_sentences
    sent_array = self.split(/[.?!]/)
    sent_array.delete_if {|word| word == ""}
    sent_array.length
  end
end

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
complex_string.count_sentences


