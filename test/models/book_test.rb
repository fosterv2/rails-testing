require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "fixtures properly save to database" do
    assert_not_nil books(:harry), "book fixture did not save to database"

    assert_equal authors(:rowling), books(:harry).author, "book fixture does not reference author fixture"
  end
end
