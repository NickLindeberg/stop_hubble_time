class HubbleService

  def images
    get_json("images")
  end

  def image_link(id)
    get_json("image/#{id}")[:image_files][3][:file_url]
  end

  private

  def get_json(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @conn = Faraday.new(url: "http://hubblesite.org/api/v3/") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end
end
