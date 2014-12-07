class Combatant < ActiveRecord::Base
  validates :url, uniqueness: true
end
