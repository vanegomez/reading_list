class LinksController < ApplicationController
  def index
    @user   = current_user
    @links  = Link.all
    @link   = Link.new
  end

  def create
    @link = current_user.links.new(link_params)

    if @link.save
      redirect_to user_links_path(current_user)
    else
      flash[:errors] = "Please try again"
    end
  end

  def update
    @link = set_link
    @link.update_attributes(status: params[:status])
    redirect_to user_links_path(current_user)
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end

  def set_link
    Link.find_by(id: params[:link_id])
  end
end
