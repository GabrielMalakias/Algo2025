require 'minitest/autorun'

# Just a setup to get things started
#
class Calculator
  def triple(items)
    items.map do |item|
      item * 3
    end
  end
end

class TestTriple < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_that_triple_triples_the_values
    assert_equal @calculator.triple(1..3), [3, 6, 9]
  end
end
