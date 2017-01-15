class DeviseTokenAuthCreatePatients < ActiveRecord::Migration[5.0]
  def change
    change_table(:patients) do |t|
      ## Tokens
      t.text :tokens

      t.timestamps
    end

    add_index :patients, [:uid, :provider],     :unique => true
  end
end
