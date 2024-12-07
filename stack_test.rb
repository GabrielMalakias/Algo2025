require 'minitest/autorun'
require_relative 'stack'

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
