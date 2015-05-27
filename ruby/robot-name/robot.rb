class Robot
  attr_reader :name

  def initialize
    @name = Random.rand
  end

  def name
    if !exists?
      final_name = []
      2.times { |x| final_name << ("a".."z").to_a.sample }
      final_name << @name.to_s.slice(-3..-1)
      @name = final_name.join
    end
  end

  def exists?
    /^[a-zA-Z]{2}\d{3}$/.match(@name.to_s)
  end

  def reset
    @name = Random.rand
  end
end
