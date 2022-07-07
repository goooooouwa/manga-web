json.extract! manga, :id, :title, :series_id, :volume_number, :cover_image_url, :download_url, :created_at, :updated_at
json.url manga_url(manga, format: :json)
