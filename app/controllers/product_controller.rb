class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)

    if @products.save
      redirect_to @product
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :name_confirm, :description)
  end
end
