require_relative 'node'
require 'minitest/autorun'

class LinkedList
  # A linked list is a structure that contains a list of items conected
  # to each other by a next value. Appending to the top is quite easy, however
  # to add to the bottom requires going through all items.

  attr_accessor :current_node

  def initialize(value = nil)
    new_node = Node.new(value, nil)

    self.current_node = new_node
  end

  # O(1)
  def append(value)
    new_node = Node.new(value, current_node)

    self.current_node = new_node
  end

  # O(N) -> Where N is the number of items within the list
  def append_to_end(value)
    node = current_node

    if current_node.nil?
      self.current_node = Node.new(value, nil)
      return
    end

    node = node.next until node.next.nil?
    node.next = Node.new(value, nil)
  end

  # O(N) -> Where N is the number of items within the list
  def reverse!
    prev = nil
    current = current_node
    node_next = nil

    until current.nil?
      node_next = current.next
      current.next = prev

      prev = current
      current = node_next
    end

    self.current_node = prev
  end

  # O(N) -> Where N is the number of items within the list
  def inspect
    list = []
    node = current_node

    until node.nil?
      list << node.value unless node.value.nil?

      node = node.next
    end

    list
  end

  def clear
    self.current_node = nil
  end
end
