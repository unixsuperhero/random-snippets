class Fibonacci
  attr_accessor :start_at
  attr_accessor :sequence, :next_in_sequence

  def initialize(start_at=1)
    @start_at = start_at
    @sequence = [1,1]
    ceil(@start_at)
  end

  def next_number
    @next_in_sequence = @sequence.last(2).inject(:+)
  end

  def iterations(x=1)
    x.times do
      @sequence.push next_number
    end
  end

  def ceil(stop_at=nil)
    stop_at ||= next_number
    until next_number > stop_at do
      @sequence.push next_number
    end
  end
end
