class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :combatant, counter_cache: true
end
