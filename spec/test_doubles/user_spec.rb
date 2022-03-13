describe 'Test Double' do 
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Paulo')
    allow(user).to receive(:password).and_return('secret')
  end

  it 'as_null_object' do
    user = double('User').as_null_object # every error message in the instance will be ignore
    allow(user).to receive_messages(name: 'Paulo')
    allow(user).to receive(:password).and_return('secret')

    user.abc # user has not method abc, but it will be ignored by as_null_object
  end
end
