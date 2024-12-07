require_relative 'node'

class MyQueue
  attr_accessor :current_node

  def initialize(value = nil)
    new_node = Node.new(value, nil)

    self.current_node = new_node
  end

  def push(value)
    new_node = Node.new(value, current_node)

    self.current_node = new_node
  end

  def pull
    return if current_node.nil?

    unless current_node.has_next?
      node = current_node
      self.current_node = nil

      return node.value
    end

    node = current_node
    prev = nil

    while node.has_next?
      prev = node
      node = node.next
    end

    prev.next = nil

    node.value
  end

  def clear
    self.current_node = nil
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
end
