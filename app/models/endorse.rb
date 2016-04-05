# == Schema Information
#
# Table name: endorses
#
#  id               :integer          not null, primary key
#  endorsee_id      :integer
#  endorsor_id      :integer
#  level            :integer
#  created_at       :datetime
#  updated_at       :datetime
#  skill_mapping_id :integer
#

class Endorse < ActiveRecord::Base
  belongs_to :endorsee, class_name: Person.name, foreign_key: :endorsee_id
  belongs_to :endorsor, class_name: Person.name, foreign_key: :endorsor_id
  belongs_to :skill_mapping

  validates :endorsee, :endorsor, :level, presence: true
end
