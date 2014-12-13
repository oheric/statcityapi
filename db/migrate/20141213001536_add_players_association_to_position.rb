class AddPlayersAssociationToPosition < ActiveRecord::Migration
  def self.up 
  	add_column :players, :position_id, :integer
  	add_index 'players', ['position_id'], :name => 'index_position_id'
  end

  def self.down
  	remove_column :players, :position_id
  end
end