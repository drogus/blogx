class Blogx::Admin::PostsController < ApplicationController
  before_filter :blogx_admin_authenticate
  before_filter :find_post, :only => [:show, :edit, :update, :destroy]

  respond_to :html

  layout :determine_layout

  def index
    @posts = Blogx::Post.all
    respond_with @posts
  end

  def show
    respond_with @post
  end

  def new
    @post = Blogx::Post.new
    respond_with @post
  end

  def create
    @post = Blogx::Post.new(params[:blogx_post])
    if @post.save
      redirect_to blogx_engine.admin_posts_path(@post), :notice => 'Blog post was successfully created'
    else
      render :new
    end
  end

  def edit
    repsond_with @post
  end

  def update
    if @post.update_attributes(params[:blogx_post])
      redirect_to blogx_engine.admin_posts_path(@post), :notice => 'Blog post was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    respond_with @post
  end

  private
  def find_post
    @post = Blogx::Post.find_by_slug(params[:id])
  end

  def determine_layout
    respond_to?(:layout_for_blog_admin) ? layout_for_blog_admin : "application"
  end

  def blogx_admin_authenticate
    blogx_admin_authentication if respond_to?(:blogx_admin_authentication)
  end
end
