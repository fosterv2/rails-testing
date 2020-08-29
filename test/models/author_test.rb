require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save if validations fail" do
    author = Author.new
    assert_not author.save, "saved the author without a name"

    author = Author.new(name: "J. K. Rowling", age: -10)
    assert_not author.save, "saved the author with a non-positive age"
  end
end
