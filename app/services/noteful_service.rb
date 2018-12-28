class NotefulService

  def all_notes
    get_json("https://j6f5btrhp8.execute-api.us-east-2.amazonaws.com/production/notes")
  end

  private

  def conn
    Faraday.new do |faraday|
      faraday.headers["Content-Type"] = "application/json"
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
