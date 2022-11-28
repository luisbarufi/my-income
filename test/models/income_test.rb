# frozen_string_literal: true

# == Schema Information
#
# Table name: incomes
#
#  id          :bigint           not null, primary key
#  amount      :decimal(8, 2)
#  description :string
#  name        :string
#  payday      :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class IncomeTest < ActiveSupport::TestCase
  fixtures :incomes

  test 'Income attributes must not be empty' do
    income = Income.new
    assert income.invalid?
    assert income.errors[:name].any?
    assert income.errors[:amount].any?
    assert income.errors[:payday].any?
  end

  test 'Income amount must be a positive' do
    income = Income.new(name: 'John Doe salary', payday: '2022-11-01')
    income.amount = -1
    assert income.invalid?
    assert_equal ['must be greater than or equal to 0.01'], income.errors[:amount]
    income.amount = 0
    assert income.invalid?
    assert_equal ['must be greater than or equal to 0.01'], income.errors[:amount]
    income.amount = 1
    assert income.valid?
  end
end
