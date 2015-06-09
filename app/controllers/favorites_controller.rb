class FavoritesController < ApplicationController

  before_action :ensure_current_user_is_owner, :only => [:update, :destroy, :show, :edit]

  def ensure_current_user_is_owner
    @favorite = Favorite.find(params[:id])
    if @favorite.user_id != current_user.id
      redirect_to root_url, :alert => "Nice try"
    end
  end


  def index
    @favorites = current_user.favorites
    #@favorites = current_user.timeline_favorites.order("created_at DESC")
    @favorites_for_products = current_user.timeline_favorites.where(favoriteable_type: "Product")
    @favorites_for_manufacturers = current_user.timeline_favorites.where(favoriteable_type: "Manufacturer")
    @favorites_for_categories = current_user.timeline_favorites.where(favoriteable_type: "Category")
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.favoriteable_id = params[:favoriteable_id]
    @favorite.favoriteable_type = params[:favoriteable_type].capitalize
    @favorite.user_id = current_user.id
    @favorite.notes = params[:notes]

    if @favorite.save
      redirect_to :back, :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.favoriteable_id = params[:favoriteable_id]
    @favorite.favoriteable_type = params[:favoriteable_type].capitalize
    @favorite.user_id = current_user.id
    @favorite.notes = params[:notes]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end
end
