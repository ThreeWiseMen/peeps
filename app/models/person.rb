# == Schema Information
#
# Table name: people
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string(255)
#  last_name              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  avatar                 :string(255)
#  description            :text
#

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
