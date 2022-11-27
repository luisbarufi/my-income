# frozen_string_literal: true

require 'test_helper'

class IncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income = incomes(:one)
    @name = 'John Doe salary'
  end

  test 'should get index' do
    get incomes_url
    assert_response :success
    assert_select 'h3', 'Incomes'
    assert_select 'div.shadow-sm', minimum: 1
    assert_select 'tr', minimum: 1
    assert_select 'td', minimum: 5
    assert_select '.px-6', /\$[,\d]+\.\d\d/
  end

  test 'should get new' do
    get new_income_url
    assert_response :success
    assert_select 'h3.text-gray-700', minimum: 1
    assert_select 'h3', 'New income'
    assert_select 'div.my-5', minimum: 4
    assert_select 'div.p-5', minimum: 1
    assert_select 'div.px-4', minimum: 1
    assert_select 'input.inline-flex', minimum: 1
  end

  test 'should create income' do
    assert_difference('Income.count') do
      post incomes_url,
           params: { income: { amount: @income.amount, description: @income.description, name: @income.name,
                               payday: @income.payday } }
    end

    assert_redirected_to income_url(Income.last)
  end

  test 'should show income' do
    get income_url(@income)
    assert_response :success
    assert_select 'div.shadow-sm', minimum: 1
    assert_select 'h3', 'Income'
    assert_select 'p', minimum: 4
    assert_select 'p', /\$[,\d]+\.\d\d/
  end

  test 'should get edit' do
    get edit_income_url(@income)
    assert_response :success
    assert_select 'h3.text-gray-700', minimum: 1
    assert_select 'h3', 'Editing income'
    assert_select 'div.my-5', minimum: 4
    assert_select 'div.p-5', minimum: 1
    assert_select 'div.px-4', minimum: 1
    assert_select 'input.inline-flex', minimum: 1
  end

  test 'should update income' do
    patch income_url(@income),
          params: { income: { amount: @income.amount, description: @income.description, name: @income.name,
                              payday: @income.payday } }
    assert_redirected_to income_url(@income)
  end

  test 'should destroy income' do
    assert_difference('Income.count', -1) do
      delete income_url(@income)
    end

    assert_redirected_to incomes_url
  end
end
