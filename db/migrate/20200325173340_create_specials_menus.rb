class CreateSpecialsMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :specials_menus do |t|
      t.string :Days

      t.timestamps
    end
  end
end
