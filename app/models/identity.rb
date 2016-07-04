class Identity < ActiveRecord::Base
  has_many :identifications
  has_many :users, through: :identifications
end
