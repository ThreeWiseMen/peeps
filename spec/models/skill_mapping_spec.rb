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

require 'spec_helper'

describe SkillMapping do
  it { should validate_presence_of(:person) }
  it { should validate_presence_of(:skill) }
  it { should validate_presence_of(:kind) }
  it { should belong_to(:person) }
  it { should belong_to(:skill) }
end
