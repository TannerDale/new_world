class CreateWeapon < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :damage
      t.string :rarity
      t.string :perk
    end
  end
end
