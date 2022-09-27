require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with name, email and password" do
    user = described_class.new(
      name: "yamada",
      email: "test@example.com",
      password: "password"
    )
    expect(user).to be_valid
  end
end
