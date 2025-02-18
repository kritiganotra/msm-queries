class MoviesController < ApplicationController 
  def index 
    render({:template => "movies_templates/list"})
  end

  def details 
    movie_id = params.fetch("the_id")
    @match = Movie.where({:id => movie_id})
    @movie = @match.at(0)
    render({:template => "movies_templates/details"})
  end

end
