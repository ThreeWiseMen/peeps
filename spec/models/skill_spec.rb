# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

require 'spec_helper'

describe Skill do
  it { should validate_presence_of(:name) }
  it { should have_many(:skill_mappings) }
  it { should have_many(:people).through(:skill_mappings) }
end
