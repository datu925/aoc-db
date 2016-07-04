class UnionMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :union
end
