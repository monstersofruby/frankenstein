class CommentsController < ApplicationController
  
  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.build(params[:comment])
    if @comment.save
      redirect_to link_path(@link)
    else
      render :template => "links/show"
    end
  end
end
