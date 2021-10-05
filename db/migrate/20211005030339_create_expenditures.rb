class CreateExpenditures < ActiveRecord::Migration[6.1]
  def change
    create_table :expenditures do |t|
      t.numeric :total

      t.timestamps
    end
  end
end
