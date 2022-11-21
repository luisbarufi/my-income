class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :name
      t.date :payday
      t.string :description
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
