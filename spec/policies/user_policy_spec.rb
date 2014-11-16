require 'rails_helper'

describe UserPolicy do
  let(:policy) { UserPolicy.new user, record }
  let(:user) { FactoryGirl.build :user }

  shared_examples_for "managing a user record" do
    context 'managing their own record' do
      let(:record) { user }

      it { should eq true }
    end

    context 'managing another user' do
      let(:record) { FactoryGirl.build :user }

      it { should eq false }
    end
  end

  describe '#edit?' do
    subject { policy.edit? }

    it_should_behave_like "managing a user record"
  end

  describe '#update?' do
    subject { policy.update? }

    it_should_behave_like "managing a user record"
  end
end
