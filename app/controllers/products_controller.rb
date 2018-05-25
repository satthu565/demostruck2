class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  def search
    new_params = params.reject {|n| n=="controller" || n=="action" || n=="commit" || n=="category"}
    if (new_params.empty? || !new_params["page"].empty?)
      @products = Product.order('created_at DESC').page(params[:page])
      render "search", :locals => { :product => @products }
    else
      if ((new_params["product"].values.all?(&:blank?) && new_params["date"].values.all?(&:blank?)))
        @products = Product.order('created_at DESC').page(params[:page])
        render "search", :locals => { :product => @products }
      else
        @products = Product.search(new_params)
        render "search", :locals => { :product => @products }
      end
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :modelID, :fabrication, :fuelID, :engineID, :transmisionID, :colorID, :door, :co2, :feature, :other_parameter, :safety, :comfort, :moreinfo)
    end
end
