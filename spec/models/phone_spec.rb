require 'rails_helper'

RSpec.describe Phone, type: :model do
  it "is valid with valid attributes" do
    phone = Phone.new(brand: "Apple", model: "iPhone 13", price: 5000)
    expect(phone).to be_valid
  end

  it "is invalid without brand" do
    phone = Phone.new(model: "iPhone 13", price: 5000)
    expect(phone).not_to be_valid
  end
end