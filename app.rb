require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name}.reverse"
  end

  get "/square/:number" do
  @num = params[:number].to_i * params[:number].to_i
  "#{@num}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      "#{@phrase}"
    end
  end


end
