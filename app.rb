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
  @riddle = Game.find(0)
  erb(:riddle1)
end

post('/riddle2') do
  game = Game.new
  @riddle = Game.find(1)
  user_answer = params["user-input"]
  if game.check_user_answer(user_answer, 0)
    erb(:riddle2)
  else
    erb(:fail)
  end
end

post('/riddle3') do
  game = Game.new
  @riddle = Game.find(2)
  user_answer = params["user-input"]
  if game.check_user_answer(user_answer, 1)
    erb(:riddle3)
  else
    erb(:fail)
  end
end

post('/riddle4') do
  game = Game.new
  @riddle = Game.find(3)
  user_answer = params["user-input"]
  if game.check_user_answer(user_answer, 2)
    erb(:riddle4)
  else
    erb(:fail)
  end
end

post('/riddle5') do
  game = Game.new
  @riddle = Game.find(4)
  user_answer = params["user-input"]
  if game.check_user_answer(user_answer, 3)
    erb(:riddle5)
  else
    erb(:fail)
  end
end

post('/success') do
  game = Game.new
  @riddle = Game.find(5)
  user_answer = params["user-input"]
  if game.check_user_answer(user_answer, 4)
    erb(:success)
  else
    erb(:fail)
  end
end
