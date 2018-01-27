class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.string :name, null: false, unique: true
      t.text :description, null: false

      t.timestamps
    end
  end
end
