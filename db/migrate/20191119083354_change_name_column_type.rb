class ChangeNameColumnType < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :type, :items_type
  end
end
