# custom_enumerable.rb
module CustomEnumerable
  # Custom implementation of `map`, which applies the block to each element and returns a new array.
  def map
    return enum_for(:map) unless block_given?

    result = []
    each do |element|
      result << yield(element)
    end
    result
  end

  # Custom implementation of `reduce`, which accumulates a result by applying the block or symbol.
  def reduce(initial = nil, sym = nil)
    if initial.is_a?(Symbol)
      sym = initial
      initial = nil
    end

    if sym
      each { |element| initial = initial ? initial.send(sym, element) : element }
    else
      each { |element| initial = initial ? yield(initial, element) : element }
    end
    initial
  end

  # Custom implementation of `select`, which returns an array of elements for which the block returns true.
  def select
    return enum_for(:select) unless block_given?

    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end

  # Custom implementation of `find`, which returns the first element for which the block returns true.
  def find
    return enum_for(:find) unless block_given?

    each do |element|
      return element if yield(element)
    end
    nil
  end

  # Custom implementation of `each_with_index`
  # Iterates over each element, yielding the element along with its index.
  def each_with_index
    return enum_for(:each_with_index) unless block_given?

    index = 0
    each do |element|
      yield(element, index) # Yields both element and index to the block.
      index += 1
    end
  end

  # Custom implementation of `sort`
  # Sorts elements in ascending order by default, or by a custom block if provided.
  def sort
    return enum_for(:sort) unless block_given?

    # Simple bubble sort for demonstration purposes
    array = []
    each { |element| array << element } # Convert enumerable to an array for sorting.

    n = array.length
    loop do
      swapped = false
      (n - 1).times do |i|
        if yield(array[i], array[i + 1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped
    end
    array
  end
end


class MyArray
  include CustomEnumerable

  def initialize(array)
    @array = array
  end

  def each
    @array.each { |element| yield(element) }
  end
end
