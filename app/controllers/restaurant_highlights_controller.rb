class RestaurantHighlightsController < ApplicationController
  before_action :set_restaurant_highlight, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_highlights
  # GET /restaurant_highlights.json
  def index
    @restaurant_highlights = RestaurantHighlight.all
  end

  # GET /restaurant_highlights/1
  # GET /restaurant_highlights/1.json
  def show
  end

  # GET /restaurant_highlights/new
  def new
    @restaurant_highlight = RestaurantHighlight.new
  end

  # GET /restaurant_highlights/1/edit
  def edit
  end

  # POST /restaurant_highlights
  # POST /restaurant_highlights.json
  def create
    @restaurant_highlight = RestaurantHighlight.new(restaurant_highlight_params)

    respond_to do |format|
      if @restaurant_highlight.save
        format.html { redirect_to @restaurant_highlight, notice: 'Restaurant highlight was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_highlight }
      else
        format.html { render :new }
        format.json { render json: @restaurant_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_highlights/1
  # PATCH/PUT /restaurant_highlights/1.json
  def update
    respond_to do |format|
      if @restaurant_highlight.update(restaurant_highlight_params)
        format.html { redirect_to @restaurant_highlight, notice: 'Restaurant highlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_highlight }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_highlights/1
  # DELETE /restaurant_highlights/1.json
  def destroy
    @restaurant_highlight.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_highlights_url, notice: 'Restaurant highlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_highlight
      @restaurant_highlight = RestaurantHighlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_highlight_params
      params.require(:restaurant_highlight).permit(:restaurant_id, :highlight_id)
    end
end
