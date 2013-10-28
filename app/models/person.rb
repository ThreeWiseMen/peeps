class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader

  validates :first_name, :last_name, presence: true

  has_many :skill_mappings
  has_many :skills, through: :skill_mappings
  has_many :given_endorsements, class_name: Endorse.name, foreign_key: :endorsor_id
  has_many :received_endorsements, class_name: Endorse.name, foreign_key: :endorsee_id

  def proper_name
    "#{last_name}, #{first_name}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
