class Match < ActiveRecord::Base
  belongs_to :winner, class_name: "Combatant", foreign_key: "winner_id"
  belongs_to :loser, class_name: "Combatant", foreign_key: "loser_id"
end
