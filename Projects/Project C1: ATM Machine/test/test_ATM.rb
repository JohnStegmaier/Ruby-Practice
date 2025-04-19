require 'minitest/autorun'
require_relative '../ATM'  # Load your code

class TestATM < Minitest::Test
  def test_display_balance
    assert_equal 'Balance: $1000', display_balance(1000)
  end

  def test_display_balance_with_negative_amount
    assert_equal 'Balance: -$200', display_balance(-200)
  end

  def test_display_balance_with_string
    assert_nil display_balance("aString")
  end
end