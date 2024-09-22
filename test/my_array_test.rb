require 'minitest/autorun'
require_relative '../lib/my_array'

class MyArrayTest < Minitest::Test
  def setup
    @array = MyArray.new([1, 2, 3])
  end

  def test_map
    result = @array.map { |num| num * 2 }
    assert_equal [2, 4, 6], result
  end

  def test_reduce_with_initial_value
    result = @array.reduce(0) { |sum, num| sum + num }
    assert_equal 6, result
  end

  def test_reduce_without_initial_value
    result = @array.reduce { |sum, num| sum + num }
    assert_equal 6, result
  end

  def test_select
    result = @array.select { |num| num.odd? }
    assert_equal [1, 3], result
  end

  def test_find
    result = @array.find { |num| num > 2 }
    assert_equal 3, result
  end

  def test_each_with_index
    result = []
    @array.each_with_index { |num, index| result << [num, index] }
    assert_equal [[1, 0], [2, 1], [3, 2]], result
  end
  
  def test_sort
    result = @array.sort { |a, b| a <=> b }
    assert_equal [1, 2, 3], result
  end
end
