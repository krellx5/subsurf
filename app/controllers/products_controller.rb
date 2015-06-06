class ProductsController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(:distinct => true).includes(:manufacturer, :category, :food_group).all.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:name]
    @product.food_group_id = params[:food_group_id]
    @product.manufacturer_id = params[:manufacturer_id]
    @product.category_id = params[:category_id]
    @product.image = params[:image]

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

    @product.produce_name = params[:name]
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
