class Index1
  attr_reader :key1, :pt

  def initialize(key1, pt)
    @key1 = key1
    @pt = pt
  end

  def self.add_word(index1, words)
    index1[0] = Index1.new('', -1)
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

  def self.add_page(index2, words, pages)
    index2[0] = Index2.new('', -1, -1)
    pages.each_with_index { |n, i|
      index2 << Index2.new(words[i], n, i + 1)
    }
  end
end


index1 = []
index2 = []

words = ['accommodation', 'acceptable', 'accident', 'agent', 'app', 'a']
pages = [300, 301, 302, 303, 304, 301]

Index1.add_word(index1, words)
Index2.add_page(index2, words, pages)

word = 'yurukyan'
ret = Array.new(2)

# def word_search(index1, word, ret)
#   flg, idx1, idx2 = 0, 0, 0
#   (1...index1.length).each { |idx1_|
#     break unless flg == 0
#     if word == index1[idx1_].key1
#       flg = 1
#       idx1 = idx1_
#     else
#       if word.length < index1[idx1_].key1.length
#         flg = 2
#         idx1 = idx1_
#       end
#     end
#   }
#
#   if flg > 0
#     if flg == 1
#       idx2 = index1[idx1].pt
#     else
#       flg = 0
#       idx2 =
# end
#
# p word_search(index1, word, ret)


p index1[3].pt - 1
