class CreateVarieties < ActiveRecord::Migration[6.0]
  def change
    create_table :varieties do |t|

      t.timestamps
    end
  end
end
