json.array!(@path_mappers) do |path_mapper|
  json.extract! path_mapper, :id, :title, :path
  json.url path_mapper_url(path_mapper, format: :json)
end
