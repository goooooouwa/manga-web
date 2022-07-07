json.extract! series, :id, :title, :category_id, :author_id, :download_status, :series_status, :total_volume, :cover_image_url, :created_at, :updated_at
json.url series_url(series, format: :json)
