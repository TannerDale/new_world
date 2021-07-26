class Weapontype < ApplicationRecord
  belongs_to :weaponstyle, optional: true
end
