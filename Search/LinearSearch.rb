class Index1
  attr_accessor :key1, :pt

  def initialize(key1, pt)
    @key1 = key1
    @pt = pt
  end

  def self.add_word(index1, words)
    words.each_with_index { |n, i|
      index1 << Index1.new(n, i + 1)
    }
  end

end

class Index2
  attr_reader :key2, :page, :line

  def initialize(key2, page, line)
    @key2 = key2
    @page = page
    @line = line
  end

end


index1 = []
index2 = []

index1[0] = Index1.new('', -1)
index2[0] = Index2.new('', -1, -1)

words = ['accident', 'agent', 'yurukyan', 'alt70155']
pages = [300, 301, 302, 303]

Index1.add_word(index1, words)

# index2[199] = Index2.new('accident', 300, 4)
# index2[199] = Index2.new('accident', 300, 4)
# index2[199] = Index2.new('accident', 300, 4)
# index2[199] = Index2.new('accident', 300, 4)


p index1[1].key1
p index1[1].pt
