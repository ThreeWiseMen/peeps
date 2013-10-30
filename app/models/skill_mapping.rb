class SkillMapping < ActiveRecord::Base

  belongs_to :person
  belongs_to :skill
  has_many :endorses

  def self.kinds
    [
     :love,
     :learn,
     :loathe
    ]
  end

  validates :person, :skill, :kind, presence: true
  validates :kind, inclusion: self.kinds
end
