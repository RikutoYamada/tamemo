require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validation" do
    let(:user) { FactoryBot.build(:user) }

    it "is valid with name, email and password" do
      expect(user).to be_valid
    end

    it "is invalid without name" do
      user.name = nil
      expect(user).to_not be_valid
    end

    it "is invalid without email" do
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is invalid without password" do
      user.password = nil
      expect(user).to_not be_valid
    end

    it "always saves lower case emails" do
      user.email = "FooBar@Example.Com"
      user.save!
      expect(user.reload.email).to eq "foobar@example.com"
    end

    # TODO: Analysis.
    it "is invalid with a duplicate email address" do
      FactoryBot.create(:user, email: "foobar@example.com")
      user = FactoryBot.build(:user, email: "foobar@example.com")
      user.valid?
      expect(user.errors[:email]).to include("はすでに存在します。")
    end

    it "is invalid with Incorrectly formatted email address" do
      user.email = "foobar@example,com"
      expect(user).to_not be_valid
    end
  end
end
