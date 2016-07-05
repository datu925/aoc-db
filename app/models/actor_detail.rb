class ActorDetail < ActiveRecord::Base
  belongs_to :user
  has_attached_file :headshot, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/missing.jpg"
    validates_attachment_content_type :headshot, content_type: /\Aimage\/.*\Z/

  has_attached_file :resume, default_url: "/assets/missing.jpg"
  validates_attachment_content_type :resume, content_type: /\Aapplication\/pdf\Z/, message: "PDF only, please"



  before_validation { headshot.clear if @delete_headshot
                      resume.clear if @delete_resume }

  def delete_headshot
    @delete_headshot ||= false
  end

  def delete_headshot=(value)
    @delete_headshot  = !value.to_i.zero?
  end

  def delete_resume
    @delete_resume ||= false
  end

  def delete_resume=(value)
    @delete_resume  = !value.to_i.zero?
  end


  has_many :actor_dance_types, dependent: :destroy
  has_many :dance_types, through: :actor_dance_types

  has_many :actor_voice_types, dependent: :destroy
  has_many :voice_types, through: :actor_voice_types

  has_many :religious_affiliations, dependent: :destroy
  has_many :religions, through: :religious_affiliations
end
