require 'minitest/autorun'
require_relative 'node'

class Stack
  # A stack piles up items as it and pops until the pile is empty.
  # Main methods to manipulate the stack are push and pop.
  # A inspect method is also going to be added to testing purposes.

  attr_accessor :current_node

  def initialize(node = nil)
    self.current_node = node
  end

  def push(value)
    new_node = Node.new(value, nil)

    self.current_node = new_node
  end

  def pop
    return if current_node.nil?

    node = current_node.next
    value = current_node.value

    self.current_node = node

    value
  end

  def inspect
    list = []
    node = current_node

    until node.nil?
      list << node.value

      node = node.next
    end

    list
  end

  def clear
    self.current_node = nil
  end
end

class TestStack < Minitest::Test
  def setup
    @stack = Stack.new
  end

  def test_that_push_works
    @stack.clear
    @stack.push(3)
    @stack.push(2)
    @stack.push(1)

    assert_equal @stack.inspect, [1, 2, 3]
  end

  def test_that_pop_works
    @stack.clear
    @stack.push(3)
    @stack.push(2)
    @stack.push(1)

    assert_equal @stack.pop, 1
    assert_equal @stack.pop, 2
    assert_equal @stack.pop, 3
    assert_nil @stack.pop
  end
end
