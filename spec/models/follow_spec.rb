require 'rails_helper'

RSpec.describe Follow, type: :model do
  it { is_expected_to validate_presence_of(:follower_id) }
  it { is_expected_to validate_presence_of(:following_id) }
  it { is_expected_to validate_uniqueness_of(:follower_id).scoped_to(:following_id) }
end
