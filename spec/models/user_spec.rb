require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_uniqueness_of(:screen_name) }
  it { is_expected.to validate_presence_of(:screen_name) }
  it { is_expected.to validate_presence_of(:name) }

  let(:user_a) { create(:user) }
  let(:user_b) { create(:user, screen_name: :capybot) }

  describe '#follow!' do
    before { user_a.follow!(user_b) }

    it { expect(user_a.following).to include(user_b) }
    it { expect(user_b.followers).to include(user_a) }
  end

  describe '#unfollow!' do
    before { user_a.follow!(user_b) }

    it 'unfollow user' do
      expect(user_a.following).to include(user_b)
      user_a.unfollow!(user_b)
      expect(user_a.following).not_to include(user_b)
    end
  end
end
