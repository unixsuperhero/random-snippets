class SudokuProbability < Struct.new(:rows, :cols)
  attr_accessor :possibilities

  def calculate
    puts
    min_possibilities = []
    max_possibilities = []
    [*0...rows].each do |row|
      [*0...cols].each do |col|
        min = 9 - (row + col)
        min = min > 0 ? min : 1
        min_possibilities.push( min )
        max_possibilities.push( [(9-row),(9-col)].min )
      end
    end

    puts
    puts min_possibilities.inject(:*)
    puts max_possibilities.inject(:*)
    puts
    puts :min
    puts min_possibilities.each_slice(9).map{|slice| slice.join }
    puts
    puts :max
    puts max_possibilities.each_slice(9).map{|slice| slice.join }
    puts
    puts '------------------------------------'
    puts
  end
end

SudokuProbability.new(9,9).calculate

__END__


1834933472251084800000
9278496603801318870491332608000000000

min
987654321
876543211
765432111
654321111
543211111
432111111
321111111
211111111
111111111

max
987654321
887654321
777654321
666654321
555554321
444444321
333333321
222222221
111111111

------------------------------------


987654321
887654321
777654321
666654321
555554321
444444321
333333321
222222221
111111111

9278496603801318870491332608000000000

------------------------------------

987654321
887654321
777654321
666654321
555554321
444444321
333333321
222222221
111111111



