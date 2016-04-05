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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :endorse do
  end
end
