class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.references :fruit, null: false, foreign_key: true
      t.integer :month, null:false
      t.timestamps
    end
  end
end
