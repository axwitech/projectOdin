class Node
  attr_accessor :next
  attr_accessor :value

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_reader :size
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
  def append(data)
    node = Node.new(data)
    @size += 1
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next = node
      @tail = @tail.next
    end
  end

  def pre(data)
    @size += 1
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = @head
    else
      node.next = @head
      @head = node
    end
  end

  def size
    return @size
  end

  def head
    return @head
  end

  def tail
    return @tail
  end

  def at(index)
    if self.size > index
      if @head.next
        node=@head.next
        i = 0
        until i == index
          node = node.next
          i +=1
        end
        return node
      else
        return nil
      end
      return nil
    end
  end

  def pop
    temp = @head
    until temp.next == @tail
      temp = temp.next
    end
    @tail = temp
    @tail.next = nil
  end

  def contains?(number)
    temp = @head
    until temp.nil?
      return true if temp.value == number
      temp = temp.next
    end
    false
  end

  def find(data)
    temp = @head
    until temp.nil?
      return temp if temp.value == data
      temp = temp.next
    end
    false
  end

  def to_s
    out = ""
    temp = @head
    until temp.nil?
      out += temp.value
      temp = temp.next
    end
    return out
  end
end





ll = LinkedList.new
ll.append("1")
ll.append("2")
ll.append("3")
ll.pre("4")
ll.pop
puts ll.find("2")
puts ll.contains?("5")
puts ll.tail
puts ll.at(1)
puts ll.to_s
