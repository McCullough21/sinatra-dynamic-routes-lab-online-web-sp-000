require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
  @num = params[:number].to_i * params[:number].to_i
  "#{@num}"
  end
  #
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
     @num1 = params[:number1]
     @num2 = params[:number2]
      @num1.send(@operation,@num2)
  end

end
