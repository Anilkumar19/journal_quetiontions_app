require 'test_helper'

class GenaralQuestionListsControllerTest < ActionController::TestCase
  setup do
    @genaral_question_list = genaral_question_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genaral_question_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genaral_question_list" do
    assert_difference('GenaralQuestionList.count') do
      post :create, genaral_question_list: { answer: @genaral_question_list.answer, category: @genaral_question_list.category, question: @genaral_question_list.question }
    end

    assert_redirected_to genaral_question_list_path(assigns(:genaral_question_list))
  end

  test "should show genaral_question_list" do
    get :show, id: @genaral_question_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genaral_question_list
    assert_response :success
  end

  test "should update genaral_question_list" do
    patch :update, id: @genaral_question_list, genaral_question_list: { answer: @genaral_question_list.answer, category: @genaral_question_list.category, question: @genaral_question_list.question }
    assert_redirected_to genaral_question_list_path(assigns(:genaral_question_list))
  end

  test "should destroy genaral_question_list" do
    assert_difference('GenaralQuestionList.count', -1) do
      delete :destroy, id: @genaral_question_list
    end

    assert_redirected_to genaral_question_lists_path
  end
end
