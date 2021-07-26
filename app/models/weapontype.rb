class Weapontype < ApplicationRecord
  belongs_to :weaponstyle
  has_many :weapons
end
