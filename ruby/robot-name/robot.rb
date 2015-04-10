class Robot
  attr_reader :name

  def initialize
    @name = Random.rand
  end

end
