require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddles_sphinx')

get('/') do
  erb(:input)
end


get('/output') do
  @answer1 = params.fetch("riddle1")
  @answer2 = params.fetch("riddle2")

  riddle_result = Riddles.new(@answer1, @answer2)

  @display_outcome = riddle_result

  erb(:output)
end
