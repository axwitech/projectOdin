module Enumerable
  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
  	return self unless block_given?
   for i in 0...length
      yield(self[i], i)
    end
  	end

  	def my_select
  		return self unless block_given?
  		new_array = []
  		my_each{ |i| new_array << i if yield(i) }
  		new_array
 	end

 	def my_all
 		return self unless bloc_given?
 		new_array=[]
 		
end

