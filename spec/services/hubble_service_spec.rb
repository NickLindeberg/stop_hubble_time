require 'rails_helper'

describe 'hubble service' do
  it 'returns list of images' do
    service = HubbleService.new
    expect(service).to be_an_instance_of(HubbleService)

    images = service.images
    expect(images.count).to eq(25)

    expect(images[0]).to have_key(:id)
    expect(images[0]).to have_key(:name)
    expect(images[0]).to have_key(:news_name)
    expect(images[0]).to have_key(:collection)
  end

  it 'returns a single link' do
    service = HubbleService.new
    link = service.image_link(100)

    expect(link).to eq("")
  end
end
