class ActorDanceType < ActiveRecord::Base
  belongs_to :actor_detail
  belongs_to :dance_type
end
