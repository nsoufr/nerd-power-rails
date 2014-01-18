require 'spec_helper'

describe Invitation do

  it { should belong_to :sender }
  it { should belong_to :receiver }

  it { should validate_uniqueness_of(:sender_id).scoped_to(:receiver_id) }
  it { should validate_uniqueness_of(:receiver_id).scoped_to(:sender_id) }

end

