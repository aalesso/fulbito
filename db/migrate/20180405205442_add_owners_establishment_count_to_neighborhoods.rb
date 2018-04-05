class AddOwnersEstablishmentCountToNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :owners_establishments_count, :integer
  end
end
