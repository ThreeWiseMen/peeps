# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

class Skill < ActiveRecord::Base
  validates :name, presence: true

  has_many :skill_mappings
  has_many :people, through: :skill_mappings

  belongs_to :parent, class_name: Skill
  has_many :children, class_name: Skill, foreign_key: :parent_id
end
