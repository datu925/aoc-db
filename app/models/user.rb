class User < ActiveRecord::Base
  has_secure_password
  has_one :actor_detail
  has_many :user_genders, dependent: :destroy
  has_many :genders, through: :user_genders

  has_many :union_memberships, dependent: :destroy
  has_many :unions, through: :union_memberships

  has_many :identifications, dependent: :destroy
  has_many :identities, through: :identifications

  validates_uniqueness_of :email
  def full_name
    "#{first_name} #{last_name}"
  end

end
