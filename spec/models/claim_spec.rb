require 'rails_helper'

RSpec.describe Claim, type: :model do
  it "is valid with valid attributes" do
    phone = Phone.create(brand: "Apple", model: "iPhone 13", price: 5000)

    claim = Claim.new(
      claim_type: "quebra",
      description: "tela trincada",
      status: "aberto",
      phone: phone
    )

    expect(claim).to be_valid
  end

  it "is invalid without claim_type" do
    phone = Phone.create(brand: "Apple", model: "iPhone 13", price: 5000)

    claim = Claim.new(
      description: "tela trincada",
      status: "aberto",
      phone: phone
    )

    expect(claim).not_to be_valid
  end
end