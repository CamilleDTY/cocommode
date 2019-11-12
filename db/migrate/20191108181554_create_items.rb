class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :category
      t.string :type
      t.string :color
      t.string :size
      t.string :main_picture
      t.string :second_picture
      t.string :third_picture
      t.string :accessibility
      t.string :description
      t.string :gender
      t.string :exchange
      t.boolean :cleaning
      t.integer :guarantee
      t.boolean :contract

      t.timestamps
    end
  end
end
