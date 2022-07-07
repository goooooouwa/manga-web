class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.references :author, foreign_key: true
      t.boolean :download_status
      t.boolean :series_status
      t.integer :total_volume
      t.string :cover_image_url

      t.timestamps
    end
  end
end
