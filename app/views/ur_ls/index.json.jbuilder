json.array!(@urls) do |url|
  json.extract! url, :id, :title, :url, :last_checked, :download_to
  json.url url_url(url, format: :json)
end
