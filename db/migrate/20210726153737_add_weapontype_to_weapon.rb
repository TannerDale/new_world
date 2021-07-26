class AddWeapontypeToWeapon < ActiveRecord::Migration[5.2]
  def change
    add_reference :weapons, :weapontype, foreign_key: true
  end
end
