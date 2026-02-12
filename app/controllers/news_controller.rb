class NewsController < ApplicationController

  before_action :authenticate_user!

  def index
    pp current_user.email
    # @news=New.all
    @news=New.where(published: true).order(:created_at)
  end

  def show
    # pp params[:id]
    @page = params[:id]
    @title = New.find(@page).title
    @new=New.find(@page)
  end
end
