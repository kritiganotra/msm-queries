class ActorsController < ApplicationController 
  def index
    render({:template => "actor_templates/list"})
  end

  def details
    actor_id = params.fetch("the_id")
    match = Actor.where({:id => actor_id})
    @actor = match.at(0)
    render({:template => "actor_templates/details"})
  end  
end
