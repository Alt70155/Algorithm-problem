#https://paiza.jp/student/challenges/261/retry
n = gets.to_i
a = gets.chomp.to_s
ct = 0
n.times {
  b = gets.chomp.to_s
  if b.index(a)
    puts b
    ct+=1
  end
}
if ct == 0
  puts "None"
end
# 文字列setが文字列str内に含まれるかどうかをtrue/falseで返す
# def existence?(str, set)
#   for i in (0...str.length)
#     for j in (0...set.length)
#       break if str[i + j] != set[j]
#       return true if j == set.length-1
#     end
#   end
#   return false
# end
# set = gets.chomp.split('')
# str = gets.chomp.split('')
# p existence?(str, set)
def existence?(str, set)
  str.index(set) ? true : false
end
set = gets.chomp.to_s
str = gets.chomp.to_s
p existence?(str, set)
