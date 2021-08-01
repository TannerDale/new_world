class AddUserToWeapons < ActiveRecord::Migration[5.2]
  def change
    add_reference :weapons, :user, foreign_key: true
  end
end
