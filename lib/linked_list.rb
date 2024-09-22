# Node class to represent an element in the linked list
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

# Function to reverse a linked list recursively
def reverse_linked_list(head)
  return head if head.nil? || head.next.nil?

  # Recursively reverse the rest of the list
  reversed_head = reverse_linked_list(head.next)

  # Adjust pointers to reverse the current node
  head.next.next = head
  head.next = nil

  reversed_head
end
