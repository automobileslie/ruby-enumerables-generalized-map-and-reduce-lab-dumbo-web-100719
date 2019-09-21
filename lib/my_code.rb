def map (source_array)
  new = []
  i = 0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i+=1
  end
  new
end


def reduce (source_array, starting_point = 0)
  total = starting_point
  i = 0
  while i < source_array.length  
    total+= yield(source_array[i])
    i+=1 
  end
  total
end

def reduce_another_way(source_array)
i = 0
  while i < source_array.length
    if yield source_array[i] == false
      return false
    end
    i+=1
  end 
  return true
end

