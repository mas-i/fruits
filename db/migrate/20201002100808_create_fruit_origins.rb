class CreateFruitOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :fruit_origins do |t|
      t.references :fruit, null: false, foreign_key: true
      t.references :origin, null: false, foreign_key: true
      t.timestamps
    end
  end
end
