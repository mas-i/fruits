class ChangeDataNameToFruits < ActiveRecord::Migration[6.0]
  def change
    change_column :fruits, :name, :string, null: false
  end
end
