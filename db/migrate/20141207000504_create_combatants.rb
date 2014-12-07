class CreateCombatants < ActiveRecord::Migration
  def change
    create_table :combatants do |t|
      t.string :caption
      t.string :url

      t.timestamps
    end
  end
end
