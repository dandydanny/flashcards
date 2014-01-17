class Card

  attr_reader :term, :definition
  
  def initialize(arr)
    @term = arr[1]
    @definition = arr[0]
  end

  def match?(term)
    self.term == term.rstrip.lstrip
  end

end
