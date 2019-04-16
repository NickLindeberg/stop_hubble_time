require 'rails_helper'

describe 'favorite an image' do
  it 'lets user favorite an image' do
    user = User.create(name: 'rad', email: 'rad@rad.com', password: 'password')
    user.favorites.create(link: "https://media.stsci.edu/uploads/image_file/image_attachment/795/web.jpg")

    visit '/'
    first(:button, "Favorite").click


  end
end
