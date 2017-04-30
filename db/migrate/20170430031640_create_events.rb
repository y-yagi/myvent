class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :start_at
      t.date :end_at
      t.string :url
      t.string :place_name
      t.text :memo
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
