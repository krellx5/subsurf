class Food_groupsController < ApplicationController
  def index
    @food_groups = Food_group.all
  end

  def show
    @food_group = Food_group.find(params[:id])
  end

  def new
    @food_group = Food_group.new
  end

  def create
    @food_group = Food_group.new
    @food_group.food_group_name = params[:food_group_name]

    if @food_group.save
      redirect_to "/food_groups", :notice => "Food Group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_group = Food_group.find(params[:id])
  end

  def update
    @food_group = Food_group.find(params[:id])

    @food_group.food_group_name = params[:food_group_name]

    if @food_group.save
      redirect_to "/food_groups", :notice => "Food Group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_group = Food_group.find(params[:id])

    @food_group.destroy

    redirect_to "/food_groups", :notice => "Food Group deleted."
  end
end
