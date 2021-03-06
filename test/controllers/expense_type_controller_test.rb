# frozen_string_literal: true

require 'test_helper'

class ExpenseTypeControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get expense_type_new_url
    assert_response :success
  end

  test 'should get create' do
    get expense_type_create_url
    assert_response :success
  end

  test 'should get index' do
    get expense_type_index_url
    assert_response :success
  end

  test 'should get show' do
    get expense_type_show_url
    assert_response :success
  end

  test 'should get edit' do
    get expense_type_edit_url
    assert_response :success
  end

  test 'should get update' do
    get expense_type_update_url
    assert_response :success
  end

  test 'should get delete' do
    get expense_type_delete_url
    assert_response :success
  end

  test 'should get destroy' do
    get expense_type_destroy_url
    assert_response :success
  end
end
