require 'test_helper'

class MangaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manga = manga(:one)
  end

  test "should get index" do
    get manga_index_url
    assert_response :success
  end

  test "should get new" do
    get new_manga_url
    assert_response :success
  end

  test "should create manga" do
    assert_difference('Manga.count') do
      post manga_index_url, params: { manga: { cover_image_url: @manga.cover_image_url, download_url: @manga.download_url, series_id: @manga.series_id, title: @manga.title, volume_number: @manga.volume_number } }
    end

    assert_redirected_to manga_url(Manga.last)
  end

  test "should show manga" do
    get manga_url(@manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_manga_url(@manga)
    assert_response :success
  end

  test "should update manga" do
    patch manga_url(@manga), params: { manga: { cover_image_url: @manga.cover_image_url, download_url: @manga.download_url, series_id: @manga.series_id, title: @manga.title, volume_number: @manga.volume_number } }
    assert_redirected_to manga_url(@manga)
  end

  test "should destroy manga" do
    assert_difference('Manga.count', -1) do
      delete manga_url(@manga)
    end

    assert_redirected_to manga_index_url
  end
end
