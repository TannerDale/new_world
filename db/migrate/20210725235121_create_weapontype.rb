class CreateWeapontype < ActiveRecord::Migration[5.2]
  def change
    create_table :weapontypes do |t|
      t.string :name
    end
  end
end
