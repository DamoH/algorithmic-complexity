class BubbleSort

  def sorter(num)
    # creating 'num' random items in myArray between 1 and 1000...
    myArray = []
    num.times { myArray << rand(1000) }
    results = []

    for i in 1..100 do
      a = Time.now.nsec
      # Bubble sort algo here....
      swap = true
      while swap
        swap = false
        (myArray.length - 1).times do |x|
          if myArray[x] > myArray[x+1]
            myArray[x], myArray[x+1] = myArray[x+1], myArray[x] # this swaps values
            swap = true
          end
        end
        # myArray  #...outputs sorted array
      end
      # ************************
      b = Time.now.nsec
      results << (b - a)
      i += 1
    end
    @finalArray = results.sort.pop(90).shift(80)
    # @finalArray is with removals - top AND bottom 10
    puts ""

  end

  def runner
    (2500..50000).step(2500) do |n|
      sorter(n)
      puts "Average for #{n} = #{@finalArray.reduce(:+) / @finalArray.size.to_f}"
    end
  end

end



# alternative Bubble sort version......
# def sorter(myArray)
#   return myArray if myArray.size <= 1 # already sorted
#   loop do
#     swapped = false
#     0.upto(myArray.size-2) do |i|
#       if myArray[i] > myArray[i+1]
#         myArray[i], myArray[i+1] = myArray[i+1], myArray[i] # swap values
#         swapped = true
#       end
#     end
#     break unless swapped
#   end
#   myArray
# end
