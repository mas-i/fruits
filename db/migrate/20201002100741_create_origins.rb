class CreateOrigins < ActiveRecord::Migration[6.0]
  def change
    create_table :origins do |t|

      t.timestamps
    end
  end
end
