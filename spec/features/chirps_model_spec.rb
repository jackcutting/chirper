require 'spec_helper'
require 'factory_girl'
require 'ffaker'

describe Chirp do
  it 'has a valid factory' do
    expect(create(:chirp)).to be_valid
  end

  it 'is invalid without body' do
    expect(build(:chirp, body: nil)).not_to be_valid
  end

  it 'is invalid with a body greater than 150 characters' do
    expect(build(:chirp, body: FFaker::Lorem.paragraphs)).not_to be_valid
  end

  it 'returns a Chirp\'s body as a string' do
    chirp = create(:chirp, body: 'This is a chirp!')
    expect(chirp.body).to eq('This is a chirp!')
  end
end
