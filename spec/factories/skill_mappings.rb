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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :skill_mapping do
  end
end
