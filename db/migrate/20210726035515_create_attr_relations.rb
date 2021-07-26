class CreateAttrRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :attr_relations do |t|
      t.references :weapontype, foreign_key: true
      t.references :attr, foreign_key: true
      t.boolean :primary

      t.timestamps
    end
  end
end
