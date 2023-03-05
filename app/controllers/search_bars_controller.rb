class SearchBarsController < ApplicationController
  before_action :set_search_bar, only: %i[ show edit update destroy ]

  # GET /search_bars or /search_bars.json
  def index
    @search_bars = SearchBar.all
  end

  # GET /search_bars/1 or /search_bars/1.json
  def show
  end

  # GET /search_bars/new
  def new
    @search_bar = SearchBar.new
  end

  # GET /search_bars/1/edit
  def edit
  end

  # POST /search_bars or /search_bars.json
  def create
    @search_bar = SearchBar.new(search_bar_params)

    respond_to do |format|
      if @search_bar.save
        format.html { redirect_to search_bar_url(@search_bar), notice: "Search bar was successfully created." }
        format.json { render :show, status: :created, location: @search_bar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @search_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_bars/1 or /search_bars/1.json
  def update
    respond_to do |format|
      if @search_bar.update(search_bar_params)
        format.html { redirect_to search_bar_url(@search_bar), notice: "Search bar was successfully updated." }
        format.json { render :show, status: :ok, location: @search_bar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @search_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_bars/1 or /search_bars/1.json
  def destroy
    @search_bar.destroy

    respond_to do |format|
      format.html { redirect_to search_bars_url, notice: "Search bar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_bar
      @search_bar = SearchBar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def search_bar_params
      params.fetch(:search_bar, {})
    end
end
