class Religion < ActiveRecord::Base
  has_many :religious_affiliations
  has_many :actor_details, through: :religious_affiliations
end
