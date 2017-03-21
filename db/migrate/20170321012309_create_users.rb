class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false, unique: false, index: true
      t.string :last_name, null: false, unique: false, index: true
      t.string :email, unique: true, index: true
      t.string :password_digest, null: false
      t.string :session_token, null: false, unique: true, index: true
      t.string :profile_photo
      t.timestamps null: false
    end
  end
end
