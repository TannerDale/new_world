class Weapon < ApplicationRecord
  belongs_to :weapontype
  has_many :usersweapon
  has_many :users, through: :usersweapon
end
