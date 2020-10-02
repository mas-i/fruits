class CreateFruitOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :fruit_origins do |t|

      t.timestamps
    end
  end
end
