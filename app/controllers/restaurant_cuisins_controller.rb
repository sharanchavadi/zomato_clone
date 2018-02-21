class RestaurantCuisinsController < ApplicationController
  before_action :set_restaurant_cuisin, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_cuisins
  # GET /restaurant_cuisins.json
  def index
    @restaurant_cuisins = RestaurantCuisin.all
  end

  # GET /restaurant_cuisins/1
  # GET /restaurant_cuisins/1.json
  def show
  end

  # GET /restaurant_cuisins/new
  def new
    @restaurant_cuisin = RestaurantCuisin.new
  end

  # GET /restaurant_cuisins/1/edit
  def edit
  end

  # POST /restaurant_cuisins
  # POST /restaurant_cuisins.json
  def create
    @restaurant_cuisin = RestaurantCuisin.new(restaurant_cuisin_params)

    respond_to do |format|
      if @restaurant_cuisin.save
        format.html { redirect_to @restaurant_cuisin, notice: 'Restaurant cuisin was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_cuisin }
      else
        format.html { render :new }
        format.json { render json: @restaurant_cuisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_cuisins/1
  # PATCH/PUT /restaurant_cuisins/1.json
  def update
    respond_to do |format|
      if @restaurant_cuisin.update(restaurant_cuisin_params)
        format.html { redirect_to @restaurant_cuisin, notice: 'Restaurant cuisin was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_cuisin }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_cuisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_cuisins/1
  # DELETE /restaurant_cuisins/1.json
  def destroy
    @restaurant_cuisin.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_cuisins_url, notice: 'Restaurant cuisin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_cuisin
      @restaurant_cuisin = RestaurantCuisin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_cuisin_params
      params.require(:restaurant_cuisin).permit(:restaurant_id, :cuisine_id)
    end
end
