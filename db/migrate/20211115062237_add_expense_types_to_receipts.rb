class AddExpenseTypesToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :expense_type, :string
  end
end
