require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new }

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :initials }

  it "should ensure initials are present on save" do
    subject { user.initials }

    context "initials are present" do
      let(:initials) { Faker::Lorem.word }

      before do
        user.initials = initials
        user.save
      end

      its(:initials) { should eq initials }
    end

    context "initals are nil" do
      context "name is present" do
        before { user.name = Fakre::Lorem.name }
        let(:initials) { "Some initials" }

        it { should eq initials }
      end

      context "name is nil" do

        it { should eq nil }
      end
    end
  end
end
