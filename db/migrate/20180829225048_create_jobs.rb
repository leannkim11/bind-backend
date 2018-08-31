class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :position
      t.string :city
      t.string :state
      t.string :industry
      t.text :description
      t.string :my_position
      t.string :company

      t.timestamps
    end
  end
end
