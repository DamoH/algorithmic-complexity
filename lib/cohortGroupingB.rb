class CohortGroupingB

  def grouper(peeps, grp_number)
    names = []
    peeps.times { names << rand(1000) }
    my_array = Array.new(grp_number.to_i) { Array.new }
    count = 0
    x = 0
    results = []

    for i in 1..100 do
      a = Time.now.to_f
    # **************************
      len = (names.length) * 0.005
      for n in 1..len do # always shuffled 100 times
        names.insert(-1, names.delete_at(rand(len)))
      end
      until x == names.length
        my_array[count] << names[x]
        count += 1
        x += 1
        count = 0 if count == grp_number.to_i
      end
    # **************************
      b = Time.now.to_f
      results << (b - a)
      # p "b: #{b} - a: #{a} = #{b - a}"
      i += 1
    end
    @finalArray = results.sort.pop(90).shift(80)
    # @finalArray is with removals - top AND bottom 10
    puts ""
  end

  def runner
    puts "Enter number of groups"
    grp_number = gets.chomp
    (50000..1000000).step(50000) do |peeps|
      grouper(peeps, grp_number)
      puts "Average for #{peeps} = #{((@finalArray.reduce(:+) / @finalArray.size.to_f) * 1000000000)}"
    end
  end

end
