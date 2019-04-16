require 'rails_helper'

describe 'image index' do
  it 'shows a list of images on the homepage' do
    visit '/'

    within(".images") do
      expect(page).to have_button("Favorite")
      expect(page).to have_css("img")
    end
  end
end
