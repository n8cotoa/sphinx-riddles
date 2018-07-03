require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')

get('/') do
  erb(:input)
end

post('/proceed') do
  game = Game.new
  riddle_index = 1
  @riddle = Game.find(riddle_index)
  riddle_index += 1
  erb(:riddles)
end
