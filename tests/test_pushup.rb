require 'minitest/autorun'
require './pushup'
require './log'

class Testpushup < Minitest::Test
  def test_pushup
    assert_equal ['Jan', '24', '100', '4', '20', '30', '25', '5'], Pushup.new('Jan', '24', '100', '4', '20', '30', '25', '5'), "Method failed"
  end
end
