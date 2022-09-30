require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  it "is valid with name, email and password" do
    expect(user).to be_valid
  end

  it "is invalid without name" do
    user.name = nil
    expect(user).not_to be_valid
  end

  it "is invalid without email" do
    user.email = nil
    expect(user).not_to be_valid
  end

  it "is invalid without password" do
    user.password = nil
    expect(user).not_to be_valid
  end
end
