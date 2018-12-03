class Hoge
  def initialize(str)
    @str = str
  end
  def index(set)
    for i in (0...@str.length)
      for j in (0...set.length)
        break if @str[i + j] != set[j]
        return true if j == set.length-1
      end
    end
    return false
  end
end

set = gets.chomp.split('')
str = gets.chomp.split('')
str = Hoge.new(str)
p str.index(set)
