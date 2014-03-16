require 'spec_helper'

describe User do
  it { should have_many :pendent_invitations  }
  it { should have_many :inbox_invitations    }
  it { should have_many :posts                }
  it { should validate_presence_of :nickname  }
  it { should validate_uniqueness_of :nickname}
  it { should validate_presence_of :name      }
end
