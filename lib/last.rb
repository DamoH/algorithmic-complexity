# creating 'num' random items in array between 1 and 1000...
def lastCalc(num)
  myArray = []
  num.times { myArray << rand(1000) }
  # puts myArray
  results = []

  # working out the time difference '100' times...
  for i in 1..100 do
    # myArray.shuffle    # remove when not timing the sort method
    a = Time.now.nsec
    myArray.last # for last, reverse, shuffle and sort.
    b = Time.now.nsec
    results << (b - a)
    i += 1
  end
  resultsB = results.sort.pop(10)
  # print resultsB # what has been removed - top 10
  puts ""
  finalArray = results - resultsB

  puts "Average = #{finalArray.reduce(:+) / finalArray.size.to_f}"
end

lastCalc(10)
lastCalc(100)
lastCalc(200)
lastCalc(300)
lastCalc(400)
lastCalc(500)
lastCalc(600)
lastCalc(700)
lastCalc(800)
lastCalc(900)
lastCalc(1000)
lastCalc(2000)
lastCalc(3000)
lastCalc(4000)
lastCalc(5000)
