class PostLikesController < ApplicationController
  def create
    @like = PostLike.new(user_id: params[:user_id], post_id: params[:post_id])
    respond_to do |format|
      if @like.save
        format.js
      else
        format.js
      end
    end
  end

  def destroy
    @like = PostLike.find(params[:id])
    respond_to do |format|
      if @like.destroy
        format.js
      else
        format.js
      end
    end
  end
end
