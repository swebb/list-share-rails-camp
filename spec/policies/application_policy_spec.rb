require 'rails_helper'

describe ApplicationPolicy do
  let(:policy) { ApplicationPolicy.new user, record }
  let(:user) { FactoryGirl.build :user }
  let(:record) { User.new }

  describe '#index?' do
    subject { policy.index? }

    it { should eq false }
  end

  describe '#show"' do
    subject { policy.show? }

    it { should eq false }
  end

  describe '#create?' do
    subject { policy.create? }

    it { should eq false }
  end

  describe '#new?' do
    subject { policy.new? }

    it { should eq false }
  end

  describe '#update?' do
    subject { policy.update? }

    it { should eq false }
  end

  describe '#edit?' do
    subject { policy.edit? }

    it { should eq false }
  end

  describe '#destroy?' do
    subject { policy.destroy? }

    it { should eq false }
  end

  describe '#permitted_attributes' do
    subject { policy.permitted_attributes }

    it { should eq [] }
  end
end
