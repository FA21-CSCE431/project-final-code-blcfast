class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.binary :picture
      t.numeric :amount
      t.string :reason

      t.timestamps
    end
  end
end
