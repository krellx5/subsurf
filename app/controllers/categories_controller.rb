class CategoriesController < ApplicationController
  def index
    @q = Category.ransack(params[:q])
    @categories = @q.result(:distinct => true).includes(:products, :manufacturers).all.order(:name)
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params[:name]
    @category.notes = params[:notes]


    if @category.save
      redirect_to "/categories", :notice => "Category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    @category.name = params[:name]
    @category.notes = params[:notes]

    if @category.save
      redirect_to "/categories", :notice => "Category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    redirect_to "/categories", :notice => "Category deleted."
  end
end
