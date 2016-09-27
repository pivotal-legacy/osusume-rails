require 'rails_helper'

RSpec.describe User, type: :model do
  it 'authenticates valid user' do
    User.create!(
      name: 'danny',
      password: 'secret',
      password_confirmation: 'secret'
    )

    auth_response = User.authenticate('danny', 'secret')

    expect(auth_response.name).to eq('danny')
  end
end
