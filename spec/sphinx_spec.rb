require('rspec')
require('sphinx')

describe('Game') do
  describe('#get_riddle') do
    it("takes the index of the riddle and outputs the riddle itself") do
    game = Game.new
    expect(game.get_riddle(2)).to(eq("Runs over fields and woods all day, Under the bed at night sits not alone, With long tongue hanging out, A-waiting for a bone."))
  end
end
  describe('#get_answer') do
    it("takes the index of the riddle and outputs the answer") do
    game = Game.new
    expect(game.get_answer(2)).to(eq("shoe"))
    end
  end
  describe('#check_user_answer') do
    it("takes the index of the riddle/answer and users answer and outputs true") do
    game = Game.new
    expect(game.check_user_answer('shoe',2)).to(eq(true))
    end
  end
end
