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
    new_node = Node.new(value, current_node)

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
