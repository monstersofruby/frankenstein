class LinksController < ApplicationController
  def index
    @links = Link.all(:order => 'votes DESC')
  end
  
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to link_path(@link)
    else
      render :action => 'new'
    end
  end
end
