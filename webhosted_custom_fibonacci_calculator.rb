require "rubygems"
require "sinatra"
require_relative 'fibonacci_calculator.rb'
require "erb"

include Calculator

    get '/' do
    	redirect ("/calculate")
    end

    get '/calculate' do
        erb :calculator_form, :locals => {:calculator => session[:calculator]}
    end
  
    post '/calculate' do
		num1 = params['firstnum'].to_i
		num2 = params['secondnum'].to_i
        @@output = Calculator.run(num1, num2) 
		redirect "/results_form/"
    end
	
	get '/results_form/?' do
		erb :results_form, :locals => {:results => @@output}
	end

	post '/results_form/?' do
		redirect "/"
	end