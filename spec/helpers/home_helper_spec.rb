require 'spec_helper'

describe HomeHelper do
  describe '#link_to_session' do
    context 'when user is logged in' do
      before { helper.stub(:user_signed_in?).and_return(true) }
      it { expect(helper.link_to_session).to match /#{destroy_user_session_path}/ }
      it { expect(helper.link_to_session).to match /logout/i }
    end

    context 'when user is not logged in' do
      before { helper.stub(:user_signed_in?).and_return(false) }
      it { expect(helper.link_to_session).to match /#{new_user_session_path}/ }
      it { expect(helper.link_to_session).to match /login/i }
    end
  end
end
