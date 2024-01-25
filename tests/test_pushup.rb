require 'minitest/autorun'
require './pushup'
require './log'

class Testpushup < Minitest::Test
  def setup
    @pushups = Pushup.new('Jan', '24', '100', '4', '20', '30', '25', '5')
  end

  def test_pushup
    assert_equal 'Jan', @pushups.date_month
    assert_equal '24', @pushups.date_day
    assert_equal '100', @pushups.total_pushups
    assert_equal '4', @pushups.total_sets
    assert_equal '20', @pushups.duration
    assert_equal '30', @pushups.best
    assert_equal '25', @pushups.avg
    assert_equal '5', @pushups.set_time
  end
end
