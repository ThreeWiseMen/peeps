class Skill < ActiveRecord::Base
  validates :name, presence: true

  has_many :skill_mappings
  has_many :people, through: :skill_mappings
end
