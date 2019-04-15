class DashboardController < ApplicationController

  def index
    array= [1,100,1000,2100,2200,2300,2400,2500,2600,2700]
    hubble = HubbleService.new
    @links = array.map do |num|
      hubble.image_link(num)
    end
  end
end
