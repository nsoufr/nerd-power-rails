require 'spec_helper'

describe User do
  it { should have_many :pendent_invitations  }
  it { should have_many :inbox_invitations    }
  it { should have_many :posts                }
  it { should validate_presence_of :nickname  }
  it { should validate_uniqueness_of :nickname}
  it { should validate_presence_of :name      }

  it { should allow_value('luke_skywalker').for(:nickname)      }
  it { should allow_value('luke_skywalker12').for(:nickname)    }
  it { should_not allow_value('luke skywalker').for(:nickname)  }
  it { should_not allow_value('luke-skywalker').for(:nickname)  }
  it { should_not allow_value('luke+').for(:nickname)           }
  it { should_not allow_value('luke?').for(:nickname)           }

  let(:user) { FactoryGirl.create :user }
  subject { user }

  its(:public_nickname) { should eql "@#{user.nickname}" }
end
