class SkillMapping < ActiveRecord::Base

  belongs_to :person
  belongs_to :skill

  def self.kinds
    [
     :love,
     :learn,
     :loath
    ]
  end

  validates :person, :skill, :kind, presence: true
  validates :kind, inclusion: self.kinds
end
