class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :forename
      t.text :comment

      t.timestamps
    end
  end
end
