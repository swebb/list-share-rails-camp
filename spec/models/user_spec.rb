require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:initials) }

  describe "#initialise_initials" do
    subject { user.initials }

    context "initials are present" do
      let(:initials) { FFaker::Lorem.word }

      before do
        user.initials = initials
        user.valid?
      end

      it { is_expected.to eq initials }
    end

    context "initals are nil" do
      context "name is present" do
        before do
          user.name = "John Doe"
          user.valid?
        end

        it { is_expected.to eq "JD" }
      end

      context "name is nil" do

        it { is_expected.to eq nil }
      end
    end
  end
end
