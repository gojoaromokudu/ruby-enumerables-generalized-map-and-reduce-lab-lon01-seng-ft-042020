# Your Code Here
def map (array)
new_array = []
index = 0 
while index < array.length do 
  new_array.push(yield(array[index]))
  index += 1 
end
new_array
end

def reduce (array, start = 0)
  total = start
  index = 0
  while index < array.length do 
    total = yield(total, array[index])
    index += 1
  end
  total
end