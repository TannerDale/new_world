class DeleteAttrRelationss < ActiveRecord::Migration[5.2]
  def change
    drop_table :attr_relations
  end
end
