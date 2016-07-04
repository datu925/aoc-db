class Union < ActiveRecord::Base
  has_many :union_memberships
  has_many :users, through: :union_memberships
end
