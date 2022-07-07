class MangaController < ApplicationController
  before_action :set_manga, only: %i[ show edit update destroy ]

  # GET /manga or /manga.json
  def index
    @manga = Manga.all
  end

  # GET /manga/1 or /manga/1.json
  def show
  end

  # GET /manga/new
  def new
    @manga = Manga.new
  end

  # GET /manga/1/edit
  def edit
  end

  # POST /manga or /manga.json
  def create
    @manga = Manga.new(manga_params)

    respond_to do |format|
      if @manga.save
        format.html { redirect_to manga_url(@manga), notice: "Manga was successfully created." }
        format.json { render :show, status: :created, location: @manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manga/1 or /manga/1.json
  def update
    respond_to do |format|
      if @manga.update(manga_params)
        format.html { redirect_to manga_url(@manga), notice: "Manga was successfully updated." }
        format.json { render :show, status: :ok, location: @manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manga/1 or /manga/1.json
  def destroy
    @manga.destroy

    respond_to do |format|
      format.html { redirect_to manga_index_url, notice: "Manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga
      @manga = Manga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manga_params
      params.require(:manga).permit(:title, :series_id, :volume_number, :cover_image_url, :download_url)
    end
end
