class CreateFruits < ActiveRecord::Migration[6.0]
  def change
    create_table :fruits do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false, unique: true
      t.string :variety, null: false, unique: true
      t.text :explain, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
