class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  
  end
  get "/parts" do
     parts = Part.all
     parts.to_json
  end
  get "/builds" do
    builds = Build.all
    builds.to_json
  end
  get "/lists" do
    lists = List.all
    lists.to_json
  end
  get "/users" do
    users = User.all
    users.to_json
  end
end
