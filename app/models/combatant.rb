class Combatant < ActiveRecord::Base
  validates :url, uniqueness: true
  has_many :matches
end
