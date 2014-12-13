class Position < ActiveRecord::Base

	belongs_to :teams
	has_many :players
end