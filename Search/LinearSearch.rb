class Index1
  attr_reader :key1, :pt

  def initialize(key1, pt)
    @key1 = key1
    @pt = pt
  end

  def self.add_word(index1, words)
    index1[0] = Index1.new('', -1)
    words.each_with_index { |n, i|
      index1 << Index1.new(n, i)
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
      index2 << Index2.new(words[i], n, i)
    }
  end
end


index1 = []
index2 = []

words = ['accident', 'agent', 'yurukyan', 'alt70155']
pages = [300, 301, 302, 303]

Index1.add_word(index1, words)
Index2.add_page(index2, words, pages)

word = 'yurukyan'
ret = [302, 2]

def word_search(index1, word, ret)
  flg = 0
  (1...index1.length).each { |idx1|
    break unless flg == 0
    if word == index1[idx1].key1
      flg = 1
    else
      if word.length < index1[idx1].key1.length
        flg = 2
      end
    end
  }
  flg
end

p word_search(index1, word, ret)
