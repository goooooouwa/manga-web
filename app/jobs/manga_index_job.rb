class MangaIndexJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # scan local files and build manga index
  end
end
