class VotesController < ApplicationController
  def create
    @link = Link.find(params[:link_id])
    @link.vote!
    respond_to do |format|
      format.html { redirect_to link_path(@link) }
      format.js do 
        render :update do |page|
          page.replace "link_#{@link.id}", :partial => "links/link", :object => @link
        end
      end
    end
  end
end
