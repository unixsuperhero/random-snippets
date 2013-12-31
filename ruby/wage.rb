class Wage
  class << self
    def questions
      qs = <<-QUEST
      1. Will I be paid weekly or bi-weekly?
      2. Being 1099, I will do my own taxes so they won't be take out of the check, right?
      QUEST
      puts qs.split("\n").map{|q| q.strip }.join("\n")
    end

    def pattern
      [[*1..12].map{"%-14s"}.join(' | '), "\n"].join
    end

    def header
      printf pattern, 'hourly', 'daily', 'weekly', 'bi-weekly', 'monthly', 'quarterly', 'salary', 'december', 'january', 'february', 'up to january', 'up to february'
      printf pattern, bar='--------------', bar, bar, bar, bar, bar, bar, bar, bar, bar, bar, bar
    end

    def weekly(x)
      printf pattern, sprintf("%02f", x / (5 * 8)), sprintf("%02f", x / 5), sprintf("%02f", x), sprintf("%02f", x * 2), sprintf("%02f", x * 4), sprintf("%02f", x * 13), sprintf("%02f", x * 52), sprintf("%02f", x * 4), sprintf("%02f", x * 5), sprintf("%02f", x * 4), sprintf("%02f", x * 9), sprintf("%02f", x * 13)
    end

    def biweekly(x)
      weekly x.to_f / 2
    end

    def quarterly(x)
      weekly x.to_f / 13
    end
    def salary_after_tax(x)
      after_tax = x.to_f * 0.7
      weekly after_tax / 52
    end

    def salary(x)
      weekly x.to_f / 52
    end
  end
end

puts
puts
Wage.questions
puts
Wage.header
Wage.salary 120_000
Wage.salary_after_tax 120_000
Wage.quarterly 20_000
Wage.quarterly 18_000
Wage.quarterly 16_000
Wage.biweekly 3_000
Wage.weekly 1_000
puts
puts

__END__



1. Will I be paid weekly or bi-weekly?
2. Being 1099, I will do my own taxes so they won't be take out of the check, right?

hourly         | daily          | weekly         | bi-weekly      | monthly        | quarterly      | salary         | december       | january        | february       | up to january  | up to february
-------------- | -------------- | -------------- | -------------- | -------------- | -------------- | -------------- | -------------- | -------------- | -------------- | -------------- | --------------
57.692308      | 461.538462     | 2307.692308    | 4615.384615    | 9230.769231    | 30000.000000   | 120000.000000  | 9230.769231    | 11538.461538   | 9230.769231    | 20769.230769   | 30000.000000
40.384615      | 323.076923     | 1615.384615    | 3230.769231    | 6461.538462    | 21000.000000   | 84000.000000   | 6461.538462    | 8076.923077    | 6461.538462    | 14538.461538   | 21000.000000
38.461538      | 307.692308     | 1538.461538    | 3076.923077    | 6153.846154    | 20000.000000   | 80000.000000   | 6153.846154    | 7692.307692    | 6153.846154    | 13846.153846   | 20000.000000
34.615385      | 276.923077     | 1384.615385    | 2769.230769    | 5538.461538    | 18000.000000   | 72000.000000   | 5538.461538    | 6923.076923    | 5538.461538    | 12461.538462   | 18000.000000
30.769231      | 246.153846     | 1230.769231    | 2461.538462    | 4923.076923    | 16000.000000   | 64000.000000   | 4923.076923    | 6153.846154    | 4923.076923    | 11076.923077   | 16000.000000
37.500000      | 300.000000     | 1500.000000    | 3000.000000    | 6000.000000    | 19500.000000   | 78000.000000   | 6000.000000    | 7500.000000    | 6000.000000    | 13500.000000   | 19500.000000
25.000000      | 200.000000     | 1000.000000    | 2000.000000    | 4000.000000    | 13000.000000   | 52000.000000   | 4000.000000    | 5000.000000    | 4000.000000    | 9000.000000    | 13000.000000


