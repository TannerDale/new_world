class CreateAttribute < ActiveRecord::Migration[5.2]
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :description
    end
  end
end
