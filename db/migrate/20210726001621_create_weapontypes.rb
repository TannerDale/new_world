class CreateWeapontypes < ActiveRecord::Migration[5.2]
  def change
    create_table :weapontypes do |t|
      t.string :name
      t.string :description
    end
  end
end
