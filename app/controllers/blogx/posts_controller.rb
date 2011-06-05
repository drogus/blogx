class Blogx::PostsController < ApplicationController
  layout :determine_layout
  respond_to :html

  def index
    @posts = Blogx::Post.all
    respond_with @posts
  end

  def show
    @post = Blogx::Post.find_by_slug(params[:id])
    respond_with @post
  end

  private
  def determine_layout
    respond_to?(:layout_for_blog) ? layout_for_blog : "application"
  end
end
