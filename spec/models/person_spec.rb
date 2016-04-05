# == Schema Information
#
# Table name: people
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string(255)
#  last_name              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  avatar                 :string(255)
#  description            :text
#

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
