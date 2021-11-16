# frozen_string_literal: true

class AddDateToReceipts < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_column :receipts, :date, :date
  end
end
