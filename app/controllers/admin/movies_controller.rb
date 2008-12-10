class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.find(:all)
  end

  def new
    @movie = Movie.new
  end
  
  def create
   @movie = Movie.new(params[:movie])

    if @movie.save
      flash[:notice] = "Created movie '#{@movie.title}'."
      redirect_to admin_movies_path
    else
      flash[:error] = "Failed to create movie."
      render :action => :new
    end
  end

  def edit
   @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "Update movie '#{@movie.title}'."
      redirect_to admin_movies_path
    else
      flash[:error] = "Failed to update movie '#{@movie.title}'."
      render :action => :edit
    end
  end


  def destroy
    @movie = Movie.find(params[:id])
    
    flash[:notice] = "Removed movie '#{@movie.title}'."
    @movie.destroy
    redirect_to admin_movies_path
  end
  
end
