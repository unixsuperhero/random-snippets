#!/Users/MacbookPro/.rbenv/versions/2.0.0-p247/bin/ruby

require 'time'

class Subtitle
  def initialize(file)
    @file = file
  end

  def lines
    @lines ||= IO.readlines @file
  end

  def starts_at
    @starts_at ||= lines.find{|line| line =~ /\d\d:\d\d:\d\d,/ }.sub(/,.*/,'').split(/:/)
  end

  def adjustment
    @adjustment ||= begin
                      h,m,s = starts_at
                      (h.to_i * 60 * 60) + (m.to_i * 60) + s.to_i
    end
  end

  def newlines
    i = 0
    lines.map{|line|
      if line.dup.strip =~ /^\d\d*$/
        line = "%d\n" % (i+=1)
      end
      if line =~ /:\d\d,/
        times = line.scan(/\d\d:\d\d:\d\d/).map{|time|
          newtime = Time.parse(time) - (adjustment)
          line.sub!(time, '%02d:%02d:%02d' % [newtime.hour, newtime.min, newtime.sec])
        }
      end
      line
    }
  end
end

IO.write(ARGV[0] + '.new.srt', Subtitle.new(ARGV[0]).newlines.join)
