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
  	@size += 1
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = @head
    else
      @tail.next = node
      @tail = @tail.next
    end

  end

end




ll = LinkedList.new
ll.append("2")
ll.append("3")
