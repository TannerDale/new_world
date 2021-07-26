class AddWeaponstylesToWeapontypes < ActiveRecord::Migration[5.2]
  def change
    add_reference :weapontypes, :weaponstyle, foreign_key: true
  end
end
