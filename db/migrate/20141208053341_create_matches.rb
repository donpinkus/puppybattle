class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.integer :user_id
      t.string :session

      t.timestamps
    end
  end
end
