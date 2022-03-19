require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'Create a Customer with FactoryBot' do
    customer = build(:customer)
    expect(customer.full_name).to eq("Sr. Paulo")
  end
end
