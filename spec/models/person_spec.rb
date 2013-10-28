require 'spec_helper'

describe Person do
  it { should validate_uniqueness_of(:email) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should have_many(:skill_mappings) }
  it { should have_many(:skills).through(:skill_mappings) }
  it { should have_many(:given_endorsements) }
  it { should have_many(:received_endorsements) }
end
