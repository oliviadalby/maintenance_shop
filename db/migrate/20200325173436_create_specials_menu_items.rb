class CreateSpecialsMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :specials_menu_items do |t|
      t.string :Days
      t.string :Specials
      t.integer :Location

      t.timestamps
    end
  end
end
