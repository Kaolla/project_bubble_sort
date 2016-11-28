def bubble_sort(array)
  swap = true

  while swap do
    swap = false
    for i in 1...array.length do
      if array[i] < array[i-1]
        array[i], array[i-1] = array[i-1], array[i]
        swap = true
      end
    end
  end

  puts array.inspect
end

bubble_sort([8, 6, 7, 2, 6, 9, 5, 2, 4, 2, 3, 7, 8, 1 ,6])


def bubble_sort_by(array)
  swap = true

  while swap do
    swap = false
    for i in 1...array.length
      if yield(array[i], array[i-1]) < 0
        array[i], array[i-1] = array[i-1], array[i]
        swap = true
      end
    end
  end
  puts array.inspect
end
    
    
bubble_sort_by(["foo", "bar?", "baaaaaar", "fooo?", "foobar!!"]) {|second, first| 
second.length - first.length}