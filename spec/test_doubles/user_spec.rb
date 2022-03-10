describe 'Test Double' do 
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Paulo')
    allow(user).to receive(:password).and_return('secret')
  end
end
