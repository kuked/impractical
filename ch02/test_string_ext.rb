require "minitest/autorun"
require_relative "string_ext"

class TestStringExt < MiniTest::Test
  using StringExt
  def test_palindrome?
    [
      "",
      "a",
      "aa",
      "aba",
      "rotor"
    ].each { |w| assert_equal true, w.palindrome? }

    assert_equal false, "ab".palindrome?    
  end
end
