class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @ages.sum.to_f / @ages.size
  end

  def standard_deviation_age
    average = average_age
    deduct_avg = []
    squared = []

    @ages.each { |age| deduct_avg << age - average }
    deduct_avg.each { |deducted| squared << deducted**2 }

    squared_sum = squared.sum
    standard_deviation = (Math.sqrt(squared_sum / ages.size)).round(2)
  end
end
