class Gender < ActiveRecord::Base
  has_many :user_genders
  has_many :users, through: :identifications
end
