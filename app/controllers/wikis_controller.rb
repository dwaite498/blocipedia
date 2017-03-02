class WikisController < ApplicationController
  def index
    @wiki = Wiki.all
  end
  
  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end
end
