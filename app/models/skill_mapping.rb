class SkillMapping < ActiveRecord::Base

  belongs_to :person
  belongs_to :skill

  def self.types
    [
     :love,
     :learn,
     :loath
    ]
  end

  validates :person, :skill, :type, presence: true
  validates :type, inclusion: self.types
end
