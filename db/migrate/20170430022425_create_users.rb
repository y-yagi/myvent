class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :provider, null: false
      t.string :email

      t.timestamps
    end
  end
end
