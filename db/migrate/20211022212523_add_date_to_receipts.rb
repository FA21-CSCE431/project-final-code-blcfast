class AddDateToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :date, :date
  end
end
