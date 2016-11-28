def bubble_sort(array)
  sorted = false

  while !sorted
    sorted = true
    for i in 1...array.length do
      if array[i] < array[i-1]
        array[i], array[i-1] = array[i-1], array[i]
        sorted = false
      end
    end
  end

  puts array.inspect
end

bubble_sort([8, 6, 7, 6, 5, 9, 4, 1, 6, 5, 7, 9, 4, 3])


def bubble_sort_by(array)
  sorted = false

  while !sorted
    sorted = true
    for i in 1...array.length do
    	if yield(array[i], array[i-1]) < 0 
        array[i], array[i-1] = array[i-1], array[i]
        sorted = false
      end
    end
  end

  puts array.inspect
end

to_sort = ["foo", "bar?", "fooooo?", "BAR!", "FOOBAR !!!!"]
bubble_sort_by(to_sort) { |second, first| second.length - first.length }