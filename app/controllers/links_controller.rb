class LinksController < ApplicationController
  def index
    @user = current_user
    # @links = Link.all
  end
end
