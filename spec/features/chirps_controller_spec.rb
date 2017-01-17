require 'spec_helper'
require 'factory_girl'
require 'ffaker'

describe Chirp do
  it 'adds a Chirp' do
    visit '/'
    within('#chirpForm') do
      fill_in 'chirp[body]', with:
        'Who says you can\'t do whiteboard sessions with #remote colleagues.'
    end
    click_button 'Chirp'
    expect(page).to have_content 'Chirp added to timeline!'
  end

  it 'does not add without a body' do
    visit '/'
    within('#chirpForm') do
      fill_in 'chirp[body]', with: ''
    end
    click_button 'Chirp'
    expect(page).to have_content 'Chirp cannot be empty!'
  end

  it 'does not add with a body greater than 150 characters' do
    visit '/'
    within('#chirpForm') do
      fill_in 'chirp[body]', with:
        'Who says you can\'t do whiteboard sessions with #remote colleagues.
        Who says you can\'t do whiteboard sessions with #remote colleagues.
        Who says you can\'t do whiteboard sessions with #remote colleagues.'
    end
    click_button 'Chirp'
    expect(page).to have_content 'Chirp cannot be more than 150 characters.'
  end

  it 'shows correct body after saving' do
    visit '/'
    within('#chirpForm') do
      fill_in 'chirp[body]', with:
        'Who says you can\'t do whiteboard sessions with #remote colleagues.'
    end
    click_button 'Chirp'

    expect(page).to have_content
    'Who says you can\'t do whiteboard sessions with #remote colleagues.'
  end
end