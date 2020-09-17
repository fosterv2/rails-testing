require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author = authors(:rowling)
  end

  test "should get index" do
    get authors_path
    assert_response :success
  end

  test "should get new" do
    get new_author_path
    assert_response :success
  end

  test "should create author" do
    assert_difference('Author.count') do
      post authors_path, params: { author: { age: 73, name: "Philip Pullman" } }
    end

    assert_redirected_to author_path(Author.last)
  end

  test "should show author" do
    get author_path(@author)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_path(@author)
    assert_response :success
  end

  test "should update author" do
    patch author_path(@author), params: { author: { age: 56 } }
    assert_redirected_to author_path(@author)
  end

  test "should destroy author" do
    assert_difference('Author.count', -1) do
      delete author_path(@author)
    end

    assert_redirected_to authors_path
  end
end
