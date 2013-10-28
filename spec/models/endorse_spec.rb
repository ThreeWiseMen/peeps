require 'spec_helper'

describe Endorse do
  it { should validate_presence_of(:endorsee) }
  it { should validate_presence_of(:endorsor) }
  it { should validate_presence_of(:level) }
  it { should belong_to(:endorsee) }
  it { should belong_to(:endorsor) }
end
