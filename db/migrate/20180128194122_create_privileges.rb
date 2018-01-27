class CreatePrivileges < ActiveRecord::Migration[5.1]
  def change
    create_table :privileges, id: false do |t|
      t.belongs_to :person, foreign_key: true
      t.belongs_to :permission, foreign_key: true

      t.index [:person_id, :permission_id], unique: true
    end
  end
end
