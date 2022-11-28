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
class Income < ApplicationRecord
  validates :name, :payday, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.01 }
end
