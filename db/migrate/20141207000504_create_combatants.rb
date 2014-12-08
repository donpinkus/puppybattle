class CreateCombatants < ActiveRecord::Migration
  def change
    create_table :combatants do |t|
      t.string :caption
      t.string :url

      t.timestamps
    end

    Combatant.find_each do |result|
      Combatant.reset_counters(result.id, :combatants)
    end
  end
end
