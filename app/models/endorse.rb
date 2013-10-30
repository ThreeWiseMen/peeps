class Endorse < ActiveRecord::Base
  belongs_to :endorsee, class_name: Person.name, foreign_key: :endorsee_id
  belongs_to :endorsor, class_name: Person.name, foreign_key: :endorsor_id
  belongs_to :skill_mapping

  validates :endorsee, :endorsor, :level, presence: true
end
