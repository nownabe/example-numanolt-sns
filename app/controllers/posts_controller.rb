class PostsController < ApplicationController
  def create
    post = Post.new
    post.text = params[:text]
    post.user = current_user
    post.save!
    flash[:notice] = "ぽすとしましたぬまの"
    redirect_to root_path
  end
end
