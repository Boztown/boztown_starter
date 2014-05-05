json.array!(@examplets) do |examplet|
  json.extract! examplet, :id, :name, :type
  json.url examplet_url(examplet, format: :json)
end
