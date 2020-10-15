class ChangeDataMonthToSeasons < ActiveRecord::Migration[6.0]
  def change
    change_column :seasons, :month, :string
  end
end
