class DanceType < ActiveRecord::Base
  has_many :actor_dance_types
  has_many :actor_details, through: :actor_dance_types
end
