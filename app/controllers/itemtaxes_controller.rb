class ItemtaxesController < ApplicationController
  before_action :set_itemtax, only: [:show, :edit, :update, :destroy]

  # GET /itemtaxes
  # GET /itemtaxes.json
  def index
    @itemtaxes = Itemtax.all
  end

  # GET /itemtaxes/1
  # GET /itemtaxes/1.json
  def show
  end

  # GET /itemtaxes/new
  def new
    @itemtax = Itemtax.new
    @item = Item.all

  end

  # GET /itemtaxes/1/edit
  def edit
  end

  # POST /itemtaxes
  # POST /itemtaxes.json
  def create
    @itempresent = Item.find(params[:itemtax][:itemid])
    if @itempresent.nil?
        @itemtax = Itemtax.new(itemtax_params)
        @item = Item.all
    respond_to do |format|
      if @itemtax.save
        format.html { redirect_to @itemtax, notice: 'Itemtax was successfully created.' }
        format.json { render :show, status: :created, location: @itemtax }
      else
        format.html { render :new }
        format.json { render json: @itemtax.errors, status: :unprocessable_entity }
      end
    end
    else
      redirect_to itemtaxes_url ,notice:"Tax for the item is already added"
    end
    
  end

  # PATCH/PUT /itemtaxes/1
  # PATCH/PUT /itemtaxes/1.json
  def update
    respond_to do |format|
      if @itemtax.update(itemtax_params)
        format.html { redirect_to @itemtax, notice: 'Itemtax was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemtax }
      else
        format.html { render :edit }
        format.json { render json: @itemtax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemtaxes/1
  # DELETE /itemtaxes/1.json
  def destroy
    @itemtax.destroy
    respond_to do |format|
      format.html { redirect_to itemtaxes_url, notice: 'Itemtax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemtax
      @itemtax = Itemtax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemtax_params
      params.require(:itemtax).permit(:itemid, :tax_type, :tax)
    end
end
