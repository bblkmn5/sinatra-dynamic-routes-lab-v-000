require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    phrase = ''

    params[:number].to_i.times do
      phrase += params[:phrase]
    end
    phrase
    end
  end
end
