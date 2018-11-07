puts "Enter number of groups"
grp_number = gets.chomp
names = ['Patrick Harris', 'Sebastian Becker', 'Naziya Kadri', 'Amy Denny-Guerin', 'Chloe Mingay', 'Din Stolak', 'Damion Hardy', 'Ruaridhi O’Scanlain', 'Freya Becker', 'Victor Jefferies', 'Shweta Patil', 'Nathan Quayle', 'Alexandra Dresco', 'Vu Le', 'Robbie Campbell', 'Ibrahim Ezrouki']
my_array = Array.new(grp_number.to_i) { Array.new }
count = 0
x = 0
results = []

for i in 1..100 do
  a = Time.now.nsec
# **************************
  for n in 1..10 do # always shuffled 10 times
    names.insert(0, names.delete_at(rand(16)))
  end
  until x == 16
    my_array[count] << names[x]
    count += 1
    x += 1
    count = 0 if count == grp_number.to_i
  end
# **************************
  b = Time.now.nsec
  results << (b - a)
  # p "b: #{b} - a: #{a} = #{b - a}"
  i += 1
end
@finalArray = results.sort.pop(90).shift(80)
# @finalArray is with removals - top AND bottom 10
for i in 0...grp_number.to_i do
  puts my_array[i].join(", ")
end

puts ""
puts "Average = #{(@finalArray.reduce(:+) / @finalArray.size.to_f)}"
