require 'test_helper'

class BookStepsControllerTest < ActionController::TestCase
  setup do
    @book_step = book_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_step" do
    assert_difference('BookStep.count') do
      post :create, book_step: { book_id: @book_step.book_id, description: @book_step.description, id: @book_step.id, title: @book_step.title }
    end

    assert_redirected_to book_step_path(assigns(:book_step))
  end

  test "should show book_step" do
    get :show, id: @book_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_step
    assert_response :success
  end

  test "should update book_step" do
    put :update, id: @book_step, book_step: { book_id: @book_step.book_id, description: @book_step.description, id: @book_step.id, title: @book_step.title }
    assert_redirected_to book_step_path(assigns(:book_step))
  end

  test "should destroy book_step" do
    assert_difference('BookStep.count', -1) do
      delete :destroy, id: @book_step
    end

    assert_redirected_to book_steps_path
  end
end
