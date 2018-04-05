class AddSlotCountToCourts < ActiveRecord::Migration[5.0]
  def change
    add_column :courts, :slots_count, :integer
  end
end
