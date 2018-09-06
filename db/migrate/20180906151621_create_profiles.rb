class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :linkedin
      t.string :city
      t.string :state
      t.boolean :willing_to_relocate
      t.string :industry
      t.integer :user_id
      t.text :personal_statement

      t.timestamps
    end
  end
end
