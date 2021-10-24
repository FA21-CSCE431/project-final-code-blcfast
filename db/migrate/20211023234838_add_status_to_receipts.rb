class AddStatusToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :status, :string
  end
end
