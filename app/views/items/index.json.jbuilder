json.array!(@items) do |item|
  json.extract! item, :id, :event_id, :name, :amount
  json.url item_url(item, format: :json)
end
