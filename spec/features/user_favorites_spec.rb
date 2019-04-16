require 'rails_helper'

describe 'favorites' do
  it 'shows a list of favorites' do
    user = User.create(name: 'rad', email: 'rad@rad.com', password: 'password')
    user.favorites.create(link: "https://media.stsci.edu/uploads/image_file/image_attachment/795/web.jpg")
    user.favorites.create(link: "https://media.stsci.edu/uploads/image_file/image_attachment/6489/web_print.jpg")
    user.favorites.create(link: "https://media.stsci.edu/uploads/image_file/image_attachment/14251/web.jpg")
    user.favorites.create(link: "https://media.stsci.edu/uploads/image_file/image_attachment/16323/full_jpg.jpg")

    visit '/'

    click_on("Favorites")
    expect(current_path).to eq(favorites_path)
    expect(page).to have_selector('img', count: 4)
  end
end
