Rails.application.routes.draw do
  get("/", {:controller => "game", :action => "homepage"})
  get("/rock", { :controller => "game", :action => "user_played_rock"})

  get("/paper", { :controller => "game", :action => "user_played_paper"})

  get("/scissors", { :controller => "game", :action => "user_played_scissors"})

end
