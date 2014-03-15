require 'spec_helper'

describe User::Friendable do
  let(:friend_a) { FactoryGirl.create :user }
  let(:friend_b) { FactoryGirl.create :user }

  describe 'send invitation' do
    before { friend_a.send_invitation_to friend_b }

    it { expect(friend_a.pendent_invitations.last.receiver).to eql friend_b  }
    it { expect(friend_b.inbox_invitations.last.sender).to eql friend_a }
  end

  describe 'add a friend' do
    before { friend_a.add_friend! friend_b }

    it '#friends' do
      expect(friend_a.friends).to include friend_b
      expect(friend_b.friends).to include friend_a
    end

    it '#friend_of?' do
      expect(friend_a).to be_friend_of friend_b
      expect(friend_b).to be_friend_of friend_a
    end
  end
end


