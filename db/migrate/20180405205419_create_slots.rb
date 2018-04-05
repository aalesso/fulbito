class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.date :date
      t.time :time
      t.integer :courts_id
      t.integer :users_id

      t.timestamps

    end
  end
end
