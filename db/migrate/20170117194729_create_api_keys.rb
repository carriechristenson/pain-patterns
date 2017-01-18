class CreateApiKeys < ActiveRecord::Migration[5.0]
  def change
    create_table :api_keys do |t|
      t.references :patient, foreign_key: true
      t.timestamps
      t.string   "access_token",           limit: 255
      t.datetime "expires_at", null: false
      t.boolean :active, null: false
    end
  end
end
