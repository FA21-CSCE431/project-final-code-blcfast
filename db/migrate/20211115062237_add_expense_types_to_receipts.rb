# frozen_string_literal: true

class AddExpenseTypesToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :expense_type, :string
  end
end
