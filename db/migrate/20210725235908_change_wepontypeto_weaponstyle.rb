class ChangeWepontypetoWeaponstyle < ActiveRecord::Migration[5.2]
  def change
    rename_table :weapontypes, :weaponstyles
  end
end
