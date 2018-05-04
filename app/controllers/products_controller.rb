class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :manager?, only: [:show]

  def index
    @products = policy_scope(Product)
  end

  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      unless params[:product][:photos].nil?
        params[:product][:photos].each do |photo|
          @photo = @product.photos.create!(image: photo)
        end
      end
      respond_to do |format|
        format.html {redirect_to product_path(@product)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'shared/form_product', product: @product}
        format.js
      end
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
  end

  def destroy
    @product.destroy
  end



  private

  def product_params
    params.require(:product).permit(:name, :description, :code, :price, :category, :banner, :main_photo, :type, :photos, color:[])
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end


  def manager?
    @actions = user_signed_in? && current_user.manager?
  end

end
