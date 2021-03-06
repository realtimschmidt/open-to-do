require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create!(full_name: "Sample User", email: "user@sample.com", password: "password") }

  it { is_expected.to validate_presence_of(:full_name) }
  it { is_expected.to validate_length_of(:full_name).is_at_least(1) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_least(3) }
  it { is_expected.to allow_value("user@sample.com").for(:email) }

  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to have_secure_password }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }

  describe "attributes" do
    it "should have name and email attributes" do
      expect(user).to have_attributes(full_name: "Sample User", email: "user@sample.com")
    end
  end

  describe "invalid user" do
    let(:user_with_invalid_full_name) { User.new(full_name: "", email: "user@sample.com") }
    let(:user_with_invalid_email) { User.new(full_name: "Sample User", email: "") }

    it "should be an invalid user due to blank name" do
      expect(user_with_invalid_full_name).to_not be_valid
    end

    it "should be an invalid user due to blank email" do
      expect(user_with_invalid_email).to_not be_valid
    end

  end
end
