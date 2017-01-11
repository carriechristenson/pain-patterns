class AddPatientsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name, limit: 255
      t.string :last_name, limit: 255
      t.string :gender, limit: 255
      t.string :email, limit: 255, default: "", null: false
    end
  end
end
