require 'spec_helper'

describe SkillMapping do
  it { should validate_presence_of(:person) }
  it { should validate_presence_of(:skill) }
  it { should validate_presence_of(:kind) }
  it { should belong_to(:person) }
  it { should belong_to(:skill) }
end
