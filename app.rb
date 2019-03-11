require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get('/reversename/:name'){"#{params[:name].reverse}"}

  get('/square/:number'){"#{params[:number].to_i ** 2}"}

  # get('/say/:number/:phrase'){"#{params[:number].to_i * params[:phrase]}"}
  get '/say/:number/:phrase' do
    "#{params[:phrase]} " * params[:number].to_i
  end

  get('/say/:word1/:word2/:word3/:word4/:word5'){"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."}

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end
