class ActorVoiceType < ActiveRecord::Base
  belongs_to :actor_detail
  belongs_to :voice_type
end
