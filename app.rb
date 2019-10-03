require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name}.reverse"
  end

  get "/square/:number"
  @num = params[:number].to_i * params[:number].to_i
  "#{@num}"
  end

 
end
