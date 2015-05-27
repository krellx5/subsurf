class FoodGroupsController < ApplicationController
  def index
    @food_groups = FoodGroup.all
  end

  def show
    @food_group = FoodGroup.find(params[:id])
  end

  def new
    @food_group = FoodGroup.new
  end

  def create
    @food_group = FoodGroup.new
    @food_group.name = params[:name]

    if @food_group.save
      redirect_to "/food_groups", :notice => "Food Group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_group = FoodGroup.find(params[:id])
  end

  def update
    @food_group = FoodGroup.find(params[:id])

    @food_group.name = params[:name]

    if @food_group.save
      redirect_to "/food_groups", :notice => "Food Group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_group = FoodGroup.find(params[:id])

    @food_group.destroy

    redirect_to "/food_groups", :notice => "Food Group deleted."
  end
end
