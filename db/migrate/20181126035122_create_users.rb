class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :auth_token
      t.string :password_digest
      t.string :title
      t.integer :phone

      t.timestamps
    end
    add_index :users, :auth_token, unique: true
  end
end
