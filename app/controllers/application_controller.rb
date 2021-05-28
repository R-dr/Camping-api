class ApplicationController < ActionController::API
  #knock auth gem 
   include Knock::Authenticable
end
