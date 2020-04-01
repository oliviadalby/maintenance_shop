class CreateMaintenanceShopLists < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenance_shop_lists do |t|
      t.string :OilTypes
      t.boolean :CustomerRepairs
      t.integer :Garages

      t.timestamps
    end
  end
end
