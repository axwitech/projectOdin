class LinkedList



end

class Node
	attr_accessor :head
	attr_accessor :tail
	attr_accessor :value

	def init(head, tail, value)
		@head = head
		@tail = tail
		@value = value
	end
end
