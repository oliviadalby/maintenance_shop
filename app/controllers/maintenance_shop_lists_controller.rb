class MaintenanceShopListsController < ApplicationController
  before_action :set_maintenance_shop_list, only: [:show, :edit, :update, :destroy]

  # GET /maintenance_shop_lists
  # GET /maintenance_shop_lists.json
  def index
    @maintenance_shop_lists = MaintenanceShopList.all
  end

  # GET /maintenance_shop_lists/1
  # GET /maintenance_shop_lists/1.json
  def show
  end

  # GET /maintenance_shop_lists/new
  def new
    @maintenance_shop_list = MaintenanceShopList.new
  end

  # GET /maintenance_shop_lists/1/edit
  def edit
  end

  # POST /maintenance_shop_lists
  # POST /maintenance_shop_lists.json
  def create
    @maintenance_shop_list = MaintenanceShopList.new(maintenance_shop_list_params)

    respond_to do |format|
      if @maintenance_shop_list.save
        format.html { redirect_to @maintenance_shop_list, notice: 'Maintenance shop list was successfully created.' }
        format.json { render :show, status: :created, location: @maintenance_shop_list }
      else
        format.html { render :new }
        format.json { render json: @maintenance_shop_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_shop_lists/1
  # PATCH/PUT /maintenance_shop_lists/1.json
  def update
    respond_to do |format|
      if @maintenance_shop_list.update(maintenance_shop_list_params)
        format.html { redirect_to @maintenance_shop_list, notice: 'Maintenance shop list was successfully updated.' }
        format.json { render :show, status: :ok, location: @maintenance_shop_list }
      else
        format.html { render :edit }
        format.json { render json: @maintenance_shop_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_shop_lists/1
  # DELETE /maintenance_shop_lists/1.json
  def destroy
    @maintenance_shop_list.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_shop_lists_url, notice: 'Maintenance shop list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_shop_list
      @maintenance_shop_list = MaintenanceShopList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maintenance_shop_list_params
      params.require(:maintenance_shop_list).permit(:OilTypes, :CustomerRepairs, :Garages)
    end
end
