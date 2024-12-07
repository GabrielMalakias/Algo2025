require 'minitest/autorun'
require_relative 'queue'

class QueueTest < Minitest::Test
  def setup
    @queue = MyQueue.new
  end

  def test_that_push_works_correctly
    @queue.clear
    @queue.push(1)
    @queue.push(2)
    @queue.push(3)

    assert_equal [3, 2, 1], @queue.inspect
  end

  def test_that_pull_works_correctly
    @queue.clear
    @queue.push(1)
    @queue.push(2)
    @queue.push(3)

    assert_equal 1, @queue.pull
    assert_equal 2, @queue.pull
    assert_equal 3, @queue.pull
    assert_nil @queue.pull
  end
end
