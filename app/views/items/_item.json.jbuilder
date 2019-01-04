json.extract! item, :id, :itemcategoryid, :name, :rate, :created_at, :updated_at
json.url item_url(item, format: :json)
