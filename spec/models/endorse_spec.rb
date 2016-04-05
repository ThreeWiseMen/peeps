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

require 'spec_helper'

describe Endorse do
  it { should validate_presence_of(:endorsee) }
  it { should validate_presence_of(:endorsor) }
  it { should validate_presence_of(:level) }
  it { should belong_to(:endorsee) }
  it { should belong_to(:endorsor) }
end
