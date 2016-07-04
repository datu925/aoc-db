class ActorDetail < ActiveRecord::Base
  belongs_to :user
  has_attached_file :headshot, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :headshot, content_type: /\Aimage\/.*\Z/

  has_attached_file :resume, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :resume, content_type: /\Aapplication\/pdf\Z/, message: "PDF only, please"

  has_many :actor_dance_types
  has_many :dance_types, through: :actor_dance_types

  has_many :actor_voice_types
  has_many :voice_types, through: :actor_voice_types

  has_many :religious_affiliations
  has_many :religions, through: :religious_affiliations
end
