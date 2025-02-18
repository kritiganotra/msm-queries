Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "misc", :action => "homepage" })
  get("/movies", { :controller => "misc", :action => "homepage" })
  get("/actors", { :controller => "misc", :action => "homepage" })
end
