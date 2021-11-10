# frozen_string_literal: true

class CreateExpenditures < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    create_table :expenditures do |t|
      t.numeric :total

      t.timestamps
    end
  end
end
