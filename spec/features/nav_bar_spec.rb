require 'rails_helper'

describe 'Nav Bar Spec' do
  it 'User sees a navbar with links' do
  visit '/'

  expect(page).to have_link("Favorites")
  end
end
