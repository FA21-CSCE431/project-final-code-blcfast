# frozen_string_literal: true

class AddStatusToReceipts < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_column :receipts, :status, :string
  end
end
