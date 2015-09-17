class HomeController < ApplicationController
  before_filter :authenticate, except: [:signin]

  def index
    @posts = Post.page(params[:page])
  end
end
