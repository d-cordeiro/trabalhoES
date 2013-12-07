require 'test_helper'

class EvaluationCommentsControllerTest < ActionController::TestCase
  setup do
    @evaluation_comment = evaluation_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluation_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluation_comment" do
    assert_difference('EvaluationComment.count') do
      post :create, evaluation_comment: { comment_id: @evaluation_comment.comment_id, eval: @evaluation_comment.eval, user: @evaluation_comment.user }
    end

    assert_redirected_to evaluation_comment_path(assigns(:evaluation_comment))
  end

  test "should show evaluation_comment" do
    get :show, id: @evaluation_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluation_comment
    assert_response :success
  end

  test "should update evaluation_comment" do
    put :update, id: @evaluation_comment, evaluation_comment: { comment_id: @evaluation_comment.comment_id, eval: @evaluation_comment.eval, user: @evaluation_comment.user }
    assert_redirected_to evaluation_comment_path(assigns(:evaluation_comment))
  end

  test "should destroy evaluation_comment" do
    assert_difference('EvaluationComment.count', -1) do
      delete :destroy, id: @evaluation_comment
    end

    assert_redirected_to evaluation_comments_path
  end
end
