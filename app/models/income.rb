class Income < ApplicationRecord
  validates :name, :payday, :amount, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.01 }
end
