class LinksController < ApplicationController
  def index
    @user   = current_user
    @links  = Link.all
    @link   = Link.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.new(link_params)

    if @link.save
      redirect_to user_links_path(current_user)
    else
      flash[:errors] = "Please try again"
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
