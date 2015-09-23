require 'spec_helper'
require './app/models/link.rb'

feature 'Viewing links' do

  scenario 'I can see existing links on the links page' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end

end

feature 'Creating links' do

  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Create link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end
  end

  scenario 'there are no links in the database at the start of the test' do
    expect(Link.count).to eq 0
  end

end