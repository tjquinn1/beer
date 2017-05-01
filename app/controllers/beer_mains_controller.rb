class BeerMainsController < ApplicationController
  before_action :set_beer_main, only: [:show, :edit, :update, :destroy]

  # GET /beer_mains
  # GET /beer_mains.json
  def index
    @beer_mains = BeerMain.all
  end

  # GET /beer_mains/1
  # GET /beer_mains/1.json
  def show
  end

  # GET /beer_mains/new
  def new
    @beer_main = BeerMain.new
  end

  # GET /beer_mains/1/edit
  def edit
  end

  # POST /beer_mains
  # POST /beer_mains.json
  def create
    @beer_main = BeerMain.new(beer_main_params)

    respond_to do |format|
      if @beer_main.save
        format.html { redirect_to @beer_main, notice: 'Beer main was successfully created.' }
        format.json { render :show, status: :created, location: @beer_main }
      else
        format.html { render :new }
        format.json { render json: @beer_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_mains/1
  # PATCH/PUT /beer_mains/1.json
  def update
    respond_to do |format|
      if @beer_main.update(beer_main_params)
        format.html { redirect_to @beer_main, notice: 'Beer main was successfully updated.' }
        format.json { render :show, status: :ok, location: @beer_main }
      else
        format.html { render :edit }
        format.json { render json: @beer_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_mains/1
  # DELETE /beer_mains/1.json
  def destroy
    @beer_main.destroy
    respond_to do |format|
      format.html { redirect_to beer_mains_url, notice: 'Beer main was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_main
      @beer_main = BeerMain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_main_params

      params.require(:beer_main).permit(:name)
    end
end
