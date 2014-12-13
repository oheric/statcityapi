class AddPositionsAssociationToTeam < ActiveRecord::Migration
  def self.up
  	add_column :positions, :team_id, :integer
  	add_index 'positions', ['team_id'], :name => 'index_team_id'
  end
  def self.down
  	remove_column :positions, :team_id
  end
end
