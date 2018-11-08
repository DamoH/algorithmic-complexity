class ZerosAndOnes

  def zerosAndOnes(num)
    # creating 'num' random items in array either 0 or 1...
    myArray = []
    num.times { myArray << rand(2) }
    # puts myArray
    results = []

    # working out the time difference '100' times...
    for i in 1..100 do
      # myArray.shuffle    # remove when not timing the sort method
      a = Time.now.nsec
      # own zeros and ones regrouping algo here....
        groups = myArray.group_by { |n| n <=> myArray.first }
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
      zerosAndOnes(n)
      puts "Average for #{n} = #{@finalArray.reduce(:+) / @finalArray.size.to_f}"
    end
  end

end
