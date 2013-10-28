class Endorse < ActiveRecord::Base
  belongs_to :endorsee, class_name: Person.name, foreign_key: :endorsee_id
  belongs_to :endorsor, class_name: Person.name, foreign_key: :endorsor_id

  validates :endorsee, :endorsor, :level, presence: true
end
