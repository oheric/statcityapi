class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

    	t.string :name
    	t.integer :yahooid
    	t.integer :cost

    	t.timestamps null: false
    end
  end
end


