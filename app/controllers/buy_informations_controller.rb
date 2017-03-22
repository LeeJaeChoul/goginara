class BuyInformationsController < ApplicationController
  before_action :set_buy_information, only: [:show, :edit, :update, :destroy]

  # GET /buy_informations
  # GET /buy_informations.json
  def index
    @buy_informations = BuyInformation.all
  end

  # GET /buy_informations/1
  # GET /buy_informations/1.json
  def show
  end

  # GET /buy_informations/new
  def new
    @buy_information = BuyInformation.new
  end

  # GET /buy_informations/1/edit
  def edit
  end

  # POST /buy_informations
  # POST /buy_informations.json
  def create
    @buy_information = BuyInformation.new(buy_information_params)

    respond_to do |format|
      if @buy_information.save
        format.html { redirect_to @buy_information, notice: 'Buy information was successfully created.' }
        format.json { render :show, status: :created, location: @buy_information }
      else
        format.html { render :new }
        format.json { render json: @buy_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_informations/1
  # PATCH/PUT /buy_informations/1.json
  def update
    respond_to do |format|
      if @buy_information.update(buy_information_params)
        format.html { redirect_to @buy_information, notice: 'Buy information was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_information }
      else
        format.html { render :edit }
        format.json { render json: @buy_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_informations/1
  # DELETE /buy_informations/1.json
  def destroy
    @buy_information.destroy
    respond_to do |format|
      format.html { redirect_to buy_informations_url, notice: 'Buy information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_information
      @buy_information = BuyInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_information_params
      params.require(:buy_information).permit(:user, :address, :phonenumber, :email, :requirement)
    end
end
