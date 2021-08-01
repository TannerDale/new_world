class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  validates_presence_of :faction_id
  has_secure_password

  has_many :usersweapon
  has_many :weapons, through: :usersweapon
  belongs_to :faction
end
