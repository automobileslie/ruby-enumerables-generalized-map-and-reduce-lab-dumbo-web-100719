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



