class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :message
      t.string :status
      t.date :start_date
      t.date :end_date
      t.references  :item, foreign_key: true
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
