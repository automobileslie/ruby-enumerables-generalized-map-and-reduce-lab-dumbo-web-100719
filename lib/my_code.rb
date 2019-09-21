def map (source_array)
  new = []
  i = 0
  while i < source_array.length
    new.push(yield(source_array[i]))
    i+=1
  end
  new
end


def reduce (source_array, starting_point = nil)
  if starting_point = nil
  i = 0
  
else starting_point = source_array[0]
  i = 1
  
  while i < source_array.length  
    total+= yield(source_array[i])
    i+=1 
  end
  total
end



