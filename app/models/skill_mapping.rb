# == Schema Information
#
# Table name: skill_mappings
#
#  id         :integer          not null, primary key
#  skill_id   :integer
#  person_id  :integer
#  kind       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

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
