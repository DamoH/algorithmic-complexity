# creating 'num' random items in array between 1 and 1000...
def lastCalc(num)
  myArray = []
  num.times { myArray << rand(1000) }
  puts myArray
  results = []

  # working out the time difference '100' times...
  for i in 1..100 do
    # myArray.shuffle # remove when not timing the sort method
    a = Time.now.nsec
    myArray.sort
    b = Time.now.nsec
    results << (b - a)
    i += 1
  end
  resultsB = results.sort.pop(10)
  print resultsB # what has been removed - top 10%
  puts ""
  finalArray = results - resultsB

  puts "Average = #{finalArray.reduce(:+) / finalArray.size.to_f}"
end

lastCalc(5000)
