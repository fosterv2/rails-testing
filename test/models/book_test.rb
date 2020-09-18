require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "should not save if validations fail" do
    book = Book.new
    assert_not book.save, "saved the book without a title"

    book = Book.new(title: "Harry Potter")
    assert_not book.save, "saved the book without an author"
  end

  test "fixtures properly save to database" do
    assert_not_nil books(:harry), "book fixture did not save to database"

    assert_equal authors(:rowling), books(:harry).author, "book fixture does not reference author fixture"
  end
end
