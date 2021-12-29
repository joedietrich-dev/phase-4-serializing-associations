class Movie::MovieSummariesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    movie = find_movie
    render json: movie, serializer: MovieSummarySerializer
  end

  def index
    movies = Movie.all
    render json: movies, each_serializer: MovieSummarySerializer
  end

  private

  def find_movie
    Movie.find(params[:id])
  end

  def render_not_found_response
    render json: { error: "Movie not found" }, status: :not_found
  end

end
