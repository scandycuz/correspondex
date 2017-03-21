class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false, unique: false, index: true
      t.string :last_name, null: false, unique: false, index: true
      t.string :email, unique: false, index: true
      t.string :phone
      t.string :position
      t.string :company
      t.integer :user_id, null: false, unique: false, index: true
      t.timestamps null: false
    end
  end
end
