class CreateFaction < ActiveRecord::Migration[5.2]
  def change
    create_table :factions do |t|
      t.string :name
      t.string :description
    end
  end
end
