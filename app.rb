require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddles_sphinx')

get('/') do
  erb(:input)
end

get ('/output') do
  @answer1 = params.fetch("riddle1").downcase
  @answer2 = params.fetch("riddle2").downcase
  sphinx = Riddles.new(@answer1, @answer2)
  if sphinx.questions == true
    @resultstring = "You got it right"
  elsif sphinx.questions == false
    @resultstring = "You got it wrong"
  end
  erb(:output)
end
