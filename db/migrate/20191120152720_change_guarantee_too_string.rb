class ChangeGuaranteeTooString < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :guarantee, :string
  end
end
