require "minitest/autorun"
require_relative "string_ext"

class TestStringExt < MiniTest::Test
  using StringExt
  def test_count_each_char
    t = Struct.new(:pattern, :expected)
    [
      t.new("",    {}),
      t.new("a",   {"a"=>1}),
      t.new("aa",  {"a"=>2}),
      t.new("aba", {"a"=>2, "b"=>1}),
    ].each { |t| assert_equal t.expected, t.pattern.count_each_char }
  end
end
