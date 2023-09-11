class CreateNewUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :new_users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :profile_photo

      t.timestamps
    end
  end
end
