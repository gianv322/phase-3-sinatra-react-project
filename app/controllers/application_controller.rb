class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Hello!" }.to_json
  
  end
  get "/parts" do
     parts = Part.all
     parts.to_json
  end
  get "/builds" do
    builds = Build.all
    builds.to_json
  end
end
