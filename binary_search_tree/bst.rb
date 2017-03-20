class Node
  attr_accessor :child
  attr_accessor :value
  attr_accessor :parent

  def initialize(value, child, parent)
    @value = value
    @parent = parent
    @child = child
  end

end
## A method for creating a tree of unsorted nodes
array = [23, 7, 4, 1, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
$tree = []
def build_tree(array)
  # go in to the array and loop through each value
  array.each_index{ |index|
    if array.first
      node = Node.new(array[index],array[index+1],nil)
      $tree << node
    # else create a node with value of index, child is the array + 1, parent is array - 1
    else
      node = Node.new(array[index],array[index+1],array[index-1])
      $tree << node
    end
  }
end
## A method for  creating a tree of sorted nodes
def build_tree_unsorted(array)
  array.each_index{ |index|

  }
end


build_tree(array)
$tree.each {|node| puts node.value}
