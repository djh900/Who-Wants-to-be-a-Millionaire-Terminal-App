module Functions

  module_function
  def exitchecker
    userinput = gets.chomp.capitalize
    loop do
      case userinput
      when "Y"
        puts "\nThanks for playing Who Wants to be a Millionaire!\n"
        exit
      when "N"
        break
      else
        puts "I don't recognize that response"
      end
    end
  end

  module_function
  def sleeplines(inputarray)
    firstline = true #prevent newline on first line
    for line in inputarray
      if firstline
        puts line
        sleep(2)
        firstline = false
      else
        puts "\n" + line
      end
    end
  end

  module_function
  def rules
    system('clear')
    sleeplines([
      "Ok. Here are the rules to play Who Wants to be a Millionaire!",
      "15 questions stand between you and $1 million",
      "Each question is worth a greater amount of money than the last",
      "We start with the $100 question and work our way up all the way to $1 million",
      "There are safe levels at questions 5 and 10",
      "Each question has four possible answers, only one of which is correct",
      "Give me the right answer, and we go to the next question",
      "Give me the wrong answer, and you leave with whatever the last safe level you passed was",
      "If at any time you don't know the answer to a question, you can walk away with the money you have earned",
      "You will also have three lifelines: Ask the Audience, Phone a Friend and 50/50",
      "Ask the Audience will ask our virtual audience their opinion on the question and give you their results",
      "Phone a friend will phone your 'friend' and ask what they think",
      "50/50 will take away two wrong answers leaving only the right answer and one remaining wrong answer",
      "Best of luck!"
    ])
    puts "\nPress ENTER to play Who Wants to be a Millionaire!"
    gets
  end

  module_function
  def playmillionaire2
  end

  module_function
  def playmillionaire1
    system('clear')
    sleeplines(["Welcome to Who Wants to be a Millionaire!",
      "I'm your host, Eddie McGuire",
      "Let's start with your name"])
    print "\nENTER NAME: "
    $username = gets.chomp.capitalize
    sleeplines(["\nWelcome to the Hot Seat #{$username}!",
      "Now, would you like to hear the rules or get straight into playing for $1 million?",
      "1 FOR RULES | 2 TO PLAY MILLIONAIRE\n"])
    loop do
      userinput = gets.chomp
      case userinput
      when "1"
        rules
        break
      when "2"
        break
      else
        puts "\nI'm sorry, I didn't quite get that. Please enter 1 to hear the rules or 2 to play Millionaire"
      end
    end
    playmillionaire2
  end

end