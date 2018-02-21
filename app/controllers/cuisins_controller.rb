class CuisinsController < ApplicationController
  before_action :set_cuisin, only: [:show, :edit, :update, :destroy]

  # GET /cuisins
  # GET /cuisins.json
  def index
    @cuisins = Cuisin.all
  end

  # GET /cuisins/1
  # GET /cuisins/1.json
  def show
  end

  # GET /cuisins/new
  def new
    @cuisin = Cuisin.new
  end

  # GET /cuisins/1/edit
  def edit
  end

  # POST /cuisins
  # POST /cuisins.json
  def create
    @cuisin = Cuisin.new(cuisin_params)

    respond_to do |format|
      if @cuisin.save
        format.html { redirect_to @cuisin, notice: 'Cuisin was successfully created.' }
        format.json { render :show, status: :created, location: @cuisin }
      else
        format.html { render :new }
        format.json { render json: @cuisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuisins/1
  # PATCH/PUT /cuisins/1.json
  def update
    respond_to do |format|
      if @cuisin.update(cuisin_params)
        format.html { redirect_to @cuisin, notice: 'Cuisin was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuisin }
      else
        format.html { render :edit }
        format.json { render json: @cuisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuisins/1
  # DELETE /cuisins/1.json
  def destroy
    @cuisin.destroy
    respond_to do |format|
      format.html { redirect_to cuisins_url, notice: 'Cuisin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisin
      @cuisin = Cuisin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisin_params
      params.require(:cuisin).permit(:name)
    end
end
