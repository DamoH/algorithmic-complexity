class OwnShuffle

  def shuffleCalc(num)
    # creating 'num' random items in array between 1 and 1000...
    myArray = []
    num.times { myArray << rand(1000) }
    # puts myArray
    results = []

    # working out the time difference '100' times...
    for i in 1..100 do
      # myArray.shuffle    # remove when not timing the sort method
      a = Time.now.nsec
      # own shuffle algo here....
        len = (myArray.length) * 0.1
        for i in 1..len do
          myArray.insert(rand(len), myArray.delete_at(rand(len)))
        end
      # **************************
      b = Time.now.nsec
      results << (b - a)
      i += 1
    end
    @finalArray = results.sort.pop(90).shift(80)
    # @finalArray is with removals - top AND bottom 10
    puts ""

  end

  def runner
    (50000..1000000).step(50000) do |n|
      shuffleCalc(n)
      puts "Average for #{n} = #{@finalArray.reduce(:+) / @finalArray.size.to_f}"
    end
  end

end
