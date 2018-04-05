class CreateCourts < ActiveRecord::Migration
  def change
    create_table :courts do |t|
      t.integer :owner_id
      t.string :identification
      t.string :images
      t.integer :capacity

      t.timestamps

    end
  end
end
