require "test_helper"

class PostCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_category = post_categories(:one)
  end

  test "should get index" do
    get post_categories_url, as: :json
    assert_response :success
  end

  test "should create post_category" do
    assert_difference("PostCategory.count") do
      post post_categories_url, params: { post_category: { category_id: @post_category.category_id, post_id: @post_category.post_id } }, as: :json
    end

    assert_response :created
  end

  test "should show post_category" do
    get post_category_url(@post_category), as: :json
    assert_response :success
  end

  test "should update post_category" do
    patch post_category_url(@post_category), params: { post_category: { category_id: @post_category.category_id, post_id: @post_category.post_id } }, as: :json
    assert_response :success
  end

  test "should destroy post_category" do
    assert_difference("PostCategory.count", -1) do
      delete post_category_url(@post_category), as: :json
    end

    assert_response :no_content
  end
end
