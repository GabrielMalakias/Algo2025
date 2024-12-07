class Node
  # Represents a node that could be used within a tree, stack, queue or whatever structure.
  # Value contains the actual value a certain node has.
  # Next contains a reference to the next node.
  attr_accessor :value, :next

  def initialize(value, n)
    self.value = value
    self.next = n
  end

  def add_next(n)
    self.next = n
  end

  def has_next?
    !self.next.nil?
  end
end
