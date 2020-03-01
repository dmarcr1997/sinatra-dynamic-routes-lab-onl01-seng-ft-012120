require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  @name = params[:name].reverse
  @name
end

get '/square/:number' do
  @number = params[:number].to_i
  "#{@number * @number}" 
end

get '/say/:number/:phrase' do
  @num = params[:number].to_i
  @phrase = params[:phrase]
  @string = ""
  @num.times do 
    @string << "#{@phrase} "
  end
  @string
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @string = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  @answer = @number1.method(params[:operation]).(@number2)
  "#{@answer}"
end

end