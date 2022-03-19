require 'rails_helper'

RSpec.describe Customer, type: :model do

  fixtures :customers

  it 'Create a Customer' do
    customer = customers(:paulo)

    expect(customer.name).to eq("Paulo")
    expect(customer.email).to eq("paulo@paulo.com")
    expect(customer.full_name).to eq("Sr. Paulo")
  end
end
