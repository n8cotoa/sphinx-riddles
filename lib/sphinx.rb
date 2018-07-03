class Game
  @@riddles = []
  attr_reader(:riddle1, :riddle2, :riddle3, :riddle4, :riddle5)

  def initialize()
    @riddle1 = "At night they come without being fetched, And by day they are lost without being stolen."
    @riddle2 = "I never was, am always to be, No one ever saw me, nor ever will, And yet I am the confidence of all, To live and breathe on this terrestrial ball."
    @riddle3 = "Runs over fields and woods all day, Under the bed at night sits not alone, With long tongue hanging out, A-waiting for a bone."
    @riddle4 = "The beginning of eternity, The end of time and space, The beginning of every end, And the end of every place."
    @riddle5 = "There was a green house. Inside the green house there was a white house. Inside the white house there was a red house. Inside the red house there were lots of babies."
    @answers =["stars", "tomorrow", "shoe", "the letter e", "watermelon"]
    @@riddles.push(@riddle1, @riddle2, @riddle3, @riddle4, @riddle5)
  end

  def self.find(id)
    riddle_id = id.to_i
    @@riddles.each do |riddle|
      if riddle == @@riddles[riddle_id]
        return riddle
      end
    end
  end

  # def self.find(id)
  #   return @@riddles[id-1]
  # end

  def get_riddle(index)
    @@riddles[index]
  end

  def get_answer(index)
    @answers[index]
  end

  def self.clear
    @@riddles = []
  end

  def check_user_answer(user_answer, riddle_answer_index)
    user_index = @answers.index(user_answer.downcase.gsub(/[^a-z ]/, ""))
    if riddle_answer_index == user_index
      true
    else
      false
    end
  end
end


    # @riddles = ["At night they come without being fetched, And by day they are lost without being stolen.", "I never was, am always to be, No one ever saw me, nor ever will, And yet I am the confidence of all, To live and breathe on this terrestrial ball.", "Runs over fields and woods all day, Under the bed at night sits not alone, With long tongue hanging out, A-waiting for a bone.", "The beginning of eternity, The end of time and space, The beginning of every end, And the end of every place.", "There was a green house. Inside the green house there was a white house. Inside the white house there was a red house. Inside the red house there were lots of babies."]
