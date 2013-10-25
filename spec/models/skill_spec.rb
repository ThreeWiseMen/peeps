require 'spec_helper'

describe Skill do
  it { should validate_presence_of(:name) }
  it { should have_many(:skill_mappings) }
  it { should have_many(:people).through(:skill_mappings) }
end
