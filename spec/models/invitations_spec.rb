require 'spec_helper'


describe Invitation do

  it { should belong_to :sender    }
  it { should belong_to :receiver  }

end
