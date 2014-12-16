class AddPlayersAssociationToTeam < ActiveRecord::Migration
  def self.up 
  	add_column :players, :team_id, :integer
  	add_index 'players', ['team_id'], :name => 'index_team_id'
  end

  def self.down
  	remove_column :players, :team_id
  end
end