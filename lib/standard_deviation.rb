ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
sum = ages.sum
average = sum.to_f / ages.size
deduct_avg = []
squared = []

ages.each { |age| deduct_avg << age - average }
deduct_avg.each { |deducted| squared << deducted**2 }

squared_sum = squared.sum
standard_deviation = (Math.sqrt(squared_sum / ages.size)).round(2)


# When you find the standard deviation, print it out
p standard_deviation
