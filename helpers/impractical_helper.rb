require_relative "dictionary"
require_relative "string_ext"

module ImpracticalHelper
  include Dictionary

  def input(message)
    print message
    gets.chomp
  end
end
