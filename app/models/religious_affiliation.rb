class ReligiousAffiliation < ActiveRecord::Base
  belongs_to :religion
  belongs_to :actor_detail
end
