require 'spec_helper'

describe User do
  it { should have_many :pendent_invitations  }
  it { should have_many :inbox_invitations    }
  it { should have_many :posts                }
end
