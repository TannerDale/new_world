class CreateUsersweapons < ActiveRecord::Migration[5.2]
  def change
    create_table :usersweapons do |t|
      t.references :user, foreign_key: true
      t.references :weapon, foreign_key: true

      t.timestamps
    end
  end
end
