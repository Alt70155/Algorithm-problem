class List
  attr_accessor :cell

  class Node
    attr_accessor :data, :next

    def initialize(data='head')
      @data = data
      @next = 'nextPointIsNull'
    end
  end

  def initialize
    @cell = Node.new
  end

  def append(data)
    tmp = @cell
    #新しいオブジェクトを作成し、そのオブジェクトを現在のオブジェクトのnextに格納する
    while tmp.next != 'nextPointIsNull' do
      tmp = tmp.next
    end
    new_cell_object = Node.new(data)
    tmp.next = new_cell_object
    # p "data = #{data}, next = #{tmp.next}"
  end

  def contains?(data)
    tmp = @cell
    while !tmp.nil?
      if tmp.data == data
        return true
      end
      tmp = tmp.next
    end
    return false
  end

  def show
    p @cell.data
  end

  def get_item(index)
    temp = @cell
    index.times {|n|
      if temp.next == 'nextPointIsNull'
        return p nil
      elsif index == n
        puts temp.data
      end
      temp = temp.next
    }
    p temp.data
  end

  # def remove(data)
  #   if contains?(data)
  #     tmp = @cell
  #     while tmp.data == data
  #
  #     end
  #   else
  #     return p 'data is none'
  #   end
  # end

end

list = List.new
list.append(5)
list.append('a')
list.get_item(2)
list.get_item(7)
