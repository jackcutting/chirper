require 'spec_helper'
require 'factory_girl'

describe Chirp, type: :model do
  it 'has a valid factory' do
    expect(create(:chirp)).to be_valid
  end

  it 'is invalid with a body greater than 150 characters' do
    should validate_presence_of(:body).with_message(/cannot be empty/)
  end

  it 'is invalid with a body greater than 150 characters' do
    should validate_length_of(:body).is_at_most(150)
      .with_message(/cannot be more than 150 characters/)
  end

  it 'returns a Chirp\'s body as a string' do
    chirp = create(:chirp, body: 'This is a chirp!')
    expect(chirp.body).to eq('This is a chirp!')
  end
end
