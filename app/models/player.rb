class Player < ActiveRecord::Base
  attr_accessible :comment, :forename, :name
  validates :name, :forename, presence: true
end
