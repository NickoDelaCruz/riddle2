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
  if sphinx.questions == "wrong"
    @resultstring = "You got it right"
  elsif sphinx.questions == "one wrong"
    @resultstring = "You got one wrong"
  elsif sphinx.questions == "right"
    @resultstring = "You got it right"
  end
  erb(:output)
end
