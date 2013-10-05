#!/Users/jearsh/.rvm/rubies/ruby-2.0.0-p247/bin/ruby

class Sh
  class << self
    def exe cmd
      exec cmd
    end

    def sys cmd
      system cmd
    end

    def tick cmd
      `#{cmd}`
    end

    def perc cmd
      %x[#{cmd}]
    end
  end
end

