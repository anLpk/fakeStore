class JerseyTagsController < ApplicationController
  def new
    @jersey_tag = JerseyTag.new
    @jersey = Jersey.find(params[:jersey_id])
  end

  def create
    @jersey = Jersey.find(params[:jersey_id])
    tag_ids = params[:jersey_tag][:tag_id]

    tag_ids.each do |tag_id|
      @tag = Tag.find(tag_id)
      @jersey_tag = JerseyTag.new(jersey: @jersey, tag: @tag)
      @jersey_tag.save
    end
    redirect_to jersey_path(@jersey)
  end
end
