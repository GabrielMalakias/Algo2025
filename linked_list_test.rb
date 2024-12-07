require_relative 'linked_list'
require 'minitest/autorun'

class LinkedListTest < Minitest::Test
  def setup
    @linked_list = LinkedList.new
  end

  def test_that_appending_works_as_expected
    @linked_list.clear
    @linked_list.append(1)
    @linked_list.append(2)
    @linked_list.append(3)

    assert_equal [3, 2, 1], @linked_list.inspect
  end

  def test_that_appending_to_the_end_works_as_expected
    @linked_list.clear
    @linked_list.append_to_end(1)
    @linked_list.append_to_end(2)
    @linked_list.append_to_end(3)

    assert_equal [1, 2, 3], @linked_list.inspect
  end

  def test_that_reverse_works_as_expected
    @linked_list.clear
    @linked_list.append(1)
    @linked_list.append(2)
    @linked_list.append(3)

    @linked_list.reverse!

    assert_equal [1, 2, 3], @linked_list.inspect

    @linked_list.reverse!

    assert_equal [3, 2, 1], @linked_list.inspect
  end
end
