json.extract! dataset, :id, :name, :description, :uploader, :institute, :created_at, :updated_at
json.url dataset_url(dataset, format: :json)
