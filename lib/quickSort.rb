class QuickSort

  def sorter(num)
    # creating 'num' random items in myArray between 1 and 1000...
    myArray = []
    num.times { myArray << rand(1000) }
    results = []

    for i in 1..100 do
      a = Time.now.nsec
      def sortLoop(myArray)
        # Quick sort algo here....
        return myArray if myArray.length <= 1
        pivot = myArray.delete_at(rand(myArray.length)) # random pivot saved
        left = Array.new
        right = Array.new
        myArray.each do |x|
          if x <= pivot
            left << x
          else
            right << x
          end
        end
        return *sortLoop(left), pivot ,*sortLoop(right)
      # ************************
      end
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
