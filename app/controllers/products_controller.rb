class ProductsController < ApplicationController
  expose(:products)
  expose(:product)
  def index
  end
  def show 
  end
  def new 
  end
  def create
    if product.save
      redirect_to products_path, notice: 'add product successful'
    else
      redirect_to new_product_path, notice: product.errors
    end
  end
  def edit
  end
  def update
    if product.update_attribute(params[:product])
      redirect_to product_url, notice: "update successful"
    else
      redirect_to edit_product_path, notice: product.errors
    end
  end

  def destory
    @product.destory
    redirect_to products_url, notice: 'delete successful'
  end
end
