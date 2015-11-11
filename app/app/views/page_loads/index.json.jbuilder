json.array!(@page_loads) do |page_load|
  json.extract! page_load, :id, :datetime_stamp
  json.url page_load_url(page_load, format: :json)
end
