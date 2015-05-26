class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new
    @manufacturer.manufacturer_name = params[:manufacturer_name]
    @manufacturer.address = params[:address]
    @manufacturer.category_id = params[:category_id]

    if @manufacturer.save
      redirect_to "/manufacturers", :notice => "Manufacturer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])

    @manufacturer.manufacturer_name = params[:manufacturer_name]
    @manufacturer.address = params[:address]
    @manufacturer.category_id = params[:category_id]

    if @manufacturer.save
      redirect_to "/manufacturers", :notice => "Manufacturer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])

    @manufacturer.destroy

    redirect_to "/manufacturers", :notice => "Manufacturer deleted."
  end
end
