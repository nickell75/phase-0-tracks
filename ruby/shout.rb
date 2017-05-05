#######  MODULE Declaration ____________________
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

#######   CLASS Declaration
class Mom
	include Shout
end

class Dad
	include Shout
end

######    DRIVER CODE

mom = Mom.new
	p mom.yelling_happily("Oh How Sweet")
dad = Dad.new
	p dad.yell_angrily("Damn it, BART")