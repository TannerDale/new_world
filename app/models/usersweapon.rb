class Usersweapon < ApplicationRecord
  belongs_to :user
  belongs_to :weapon
end
