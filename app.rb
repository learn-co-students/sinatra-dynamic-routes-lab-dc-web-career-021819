require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    # binding.pry
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params.values
    erb :say_multiple
  end

  get '/:operation/:number1/:number2' do
    math = Operator.new(params[:operation],
                  params[:number1],
                  params[:number2])
    @output = math.operate
    erb :operation
  end
end
