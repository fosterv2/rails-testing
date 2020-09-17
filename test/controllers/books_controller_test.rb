require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:harry)
  end

  test "should get index" do
    get books_path
    assert_response :success
  end

  test "should get new" do
    get new_book_path
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_path, params: { book: { author_id: @book.author_id, title: "Harry Potter and the Chamber of Secrets" } }
    end

    assert_redirected_to book_path(Book.last)
  end

  test "should show book" do
    get book_path(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_path(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_path(@book), params: { book: { title: "Harry Potter and the Sorcerer's Stone" } }
    assert_redirected_to book_path(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_path(@book)
    end

    assert_redirected_to books_path
  end
end
