require 'spec_helper'

describe User do

  it { should have_many :pendent_invitations  }
  it { should have_many :inbox_invitations    }


  let(:friend_a) { FactoryGirl.create :user }
  let(:friend_b) { FactoryGirl.create :user }



  describe 'send friend request' do
    before { friend_a.send_invitation_to friend_b }

    it { expect(friend_a.pendent_invitations.last.receiver).to eql friend_b  }
    it { expect(friend_b.inbox_invitations.last.sender).to eql friend_a }
  end


end
