class DeviseTokenAuthCreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table(:admins) do |t|
      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## User Info
      t.string :name
      t.string :nickname
      t.string :image
      t.string :email

      t.timestamps
    end

    add_index :admins, :email
    add_index :admins, :reset_password_token, :unique => true
  end
end
