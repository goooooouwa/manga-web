class MangaScraperJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # scrap cover image from local files
  end
end
