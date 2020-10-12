class CreateOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :origins do |t|
      t.references :fruit, null: false, foreign_key: true
      t.string :prefecture, null: false
      t.string :city, null: false
      t.timestamps
    end
  end
end
