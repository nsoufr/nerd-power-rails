require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_uniqueness_of(:screen_name) }
  it { is_expected.to validate_presence_of(:screen_name) }
  it { is_expected.to validate_presence_of(:name) }
end
