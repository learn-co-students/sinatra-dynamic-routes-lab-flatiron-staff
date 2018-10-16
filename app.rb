require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num = @num ** 2
    @num.to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase]*params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == "subtract"
      num = num1 - num2
    elsif op == "multiply"
      num = num1*num2
    elsif op == "add"
      num = num1+num2
    else op == "divide"
      num = num1/num2
    end
    num.to_s
  end

end
