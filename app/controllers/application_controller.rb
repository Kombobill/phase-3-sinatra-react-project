require './config/environment'


class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  
    
  configure do
    set :public_folder, 'public'
  end
  

end
