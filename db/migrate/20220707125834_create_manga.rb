class CreateManga < ActiveRecord::Migration[5.2]
  def change
    create_table :manga do |t|
      t.string :title
      t.references :series, foreign_key: true
      t.integer :volume_number
      t.string :cover_image_url
      t.string :download_url

      t.timestamps
    end
  end
end
