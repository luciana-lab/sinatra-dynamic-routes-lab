require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # sends a 200 status code
  # renders the name backwards
  # isn't hard-coded
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  # sends a 200 status code
  # renders the square of the number
  # isn't hard-coded
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  # sends a 200 status code
  # repeats the phrase n times
  # isn't hard-coded
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase] + ", "
    @phrase_number = @phrase * @number
    "#{@phrase_number}"
  end

  # sends a 200 status code
  # concatenates the words and adds a period
  # isn't hard-coded
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  # adds two numbers together
  # subtracts the second number from the first
  # multiplies two numbers together
  # divides the first number by the second number
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @add = @number1 + @number2
    @sub = @number1 - @number2
    @multiply = @number1 * @number2
    @divide = @number1 / @number2
    
    case @operation
    when "add"
      "#{@add}"
    when "subtract"
      "#{@sub}"
    when "multiply"
      "#{@multiply}"
    else
      "#{@divide}"
    end

  end

end