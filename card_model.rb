
class Card
  attr_reader :term, :definition
  def initialize(arr)
    @term = arr[1]
    @definition = arr[0]
  end
end
