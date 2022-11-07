class ApplicationController < Sinatra::Base 
    set :default_content_type, 'application/json'

    get '/' do 
        { message: "Ozymandias Book Reviews Server"}.to_json
    end 
end 