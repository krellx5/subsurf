class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.product_name = params[:product_name]
    @product.cuisine_id = params[:food_group_id]

    if @product.save
      redirect_to "/products", :notice => "Product created successfully."
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    @product.produce_name = params[:product_name]
    @product.cuisine_id = params[:food_group_id]

    if @product.save
      redirect_to "/products", :notice => "Product updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to "/products", :notice => "Product deleted."
  end
end
