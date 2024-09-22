require 'minitest/autorun'
require_relative '../lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @head = Node.new(1)
    @head.next = Node.new(2)
    @head.next.next = Node.new(3)
  end

  def test_reverse_linked_list
    reversed_head = reverse_linked_list(@head)
    
    assert_equal 3, reversed_head.value
    assert_equal 2, reversed_head.next.value
    assert_equal 1, reversed_head.next.next.value
    assert_nil reversed_head.next.next.next
  end
end
