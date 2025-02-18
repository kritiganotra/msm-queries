class DirectorsController < ApplicationController 
  def index 
    render({:template => "director_templates/list"})
  end

  def show 
    the_id = params.fetch("the_id")
    match = Director.where({:id => the_id})
    @director = match.at(0)
    render({:template => "director_templates/details"})
  end

  def youngest
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).at(0)
    @youngest_name = @youngest_director.name
    @youngest_dob = @youngest_director.dob.strftime("%B %d, %Y")
    @youngest_id = @youngest_director.id
    render({:template => "director_templates/youngest"})
  end  

  def eldest
    @eldest_director = Director.where.not(dob: nil).order(dob: :asc).at(0)
    @eldest_name = @eldest_director.name
    @eldest_dob = @eldest_director.dob.strftime("%B %d, %Y")
    @eldest_id = @eldest_director.id
    render({:template => "director_templates/eldest"})
  end 
end
