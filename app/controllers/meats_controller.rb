class MeatsController < ApplicationController
  authorize_actions_for Meat, only: [ :new, :create ]
  before_action :set_category
  # GET /meats
  # GET /meats.json
  def index
    if @category
      @meats = @category.meats
    else
      if params[:category_id] == '0'
        @meats = Meat.uncategorized_posts
      else
        @meats = Meat.meats
      end
    end
    @category_name = params[:category_id] == '0' ? "Uncategorized" : (@category ? @category.name : "")
  end

  # GET /meats/1
  # GET /meats/1.json
  def show
    @meats = Meat.find(set_meat)
  end

  # GET /meats/new
  def new
    @meat = Meat.new
  end

  # GET /meats/1/edit
  def edit
    authorize_action_for @meat
  end

  # POST /meats
  # POST /meats.json
  def create
    @meat = Meat.new(meat_params)

    respond_to do |format|
      if @meat.save
        format.html { redirect_to @meat, notice: 'Meat was successfully created.' }
        format.json { render :show, status: :created, location: @meat }
      else
        format.html { render :new }
        format.json { render json: @meat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meats/1
  # PATCH/PUT /meats/1.json
  def update
    authorize_action_for @meat
    respond_to do |format|
      if @meat.update(meat_params)
        format.html { redirect_to @meat, notice: 'Meat was successfully updated.' }
        format.json { render :show, status: :ok, location: @meat }
      else
        format.html { render :edit }
        format.json { render json: @meat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meats/1
  # DELETE /meats/1.json
  def destroy
    authorize_action_for @meat
    @meat.destroy
    respond_to do |format|
      format.html { redirect_to meats_url, notice: 'Meat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id]) if params[:category_id] && params[:category_id] != '0'
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_meat
      @meat = Meat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meat_params
      params.require(:meat).permit(:category_id, :user_id, :title, :maker, :origin, :weight, :life, :price)
    end
end
