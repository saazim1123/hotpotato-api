# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({{ name: 'Star Wars' }, { name: 'Lord of the Rings' }})
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
    {username: "test", first_name: "Test", last_name: "Test", email: "test@test.com", password: "123"}
  ]
  
  question_list =[
    {text:"Americans are estimated to bet $6 billion on what upcoming sports event?",
      first_choice: "Super Bowl",
      second_choice: "Quidditch Cup",
      third_choice: "Chessboxing Finals",
      correct_answer: "Super Bowl" },
    {text:"What area of the baseball field typically contains the greatest number of fielders?",
      first_choice: "Infield",
      second_choice: "Outfield",
      third_choice: "Pitcher's mount",
      correct_answer: "Infield" },
    {text:"A golf ball is made out of what material?",
      first_choice: "Rubber",
      second_choice: "Polyethylene",
      third_choice: "Gallium",
      correct_answer: "Rubber" },
    {text:"In the world of football, the period of time where players are allowed to change teams is called what?",
      first_choice: "Trade deadline",
      second_choice: "Transfer window",
      third_choice: "Superdraft",
      correct_answer: "Transfer window" },
    {text:"What NFL team won the greatest number of shutouts in a single postseason?",
      first_choice: "Chicago Bears",
      second_choice: "Baltimore Ravens",
      third_choice: "Pittsburgh Steelers",
      correct_answer: "Chicago Bears" },
    {text:"Who is the current Prime Minister of the People's Republic of Bangladesh?",
      first_choice: "Sheikh Hasina",
      second_choice: "Ernesto Valverde",
      third_choice: "Tibbot Aslam",
      correct_answer: "Sheikh Hasina" },
    {text:"A mistakenly released Taylor Swift track, which hit No. 1 on iTunes Canada, was eight seconds of what?",
      first_choice: "Water running",
      second_choice: "Humming",
      third_choice: "White noise",
      correct_answer: "White noise" },
    {text:"The country that comes first alphabetically is located on what continent?",
      first_choice: "Europe",
      second_choice: "Africa",
      third_choice: "Asia",
      correct_answer: "Asia" },
    {text:"Which of these Jane Austen characters was introduced first?",
      first_choice: "Elinor Dashwood",
      second_choice: "Elizabeth Bennet",
      third_choice: "Emma Woodhouse",
      correct_answer: "Elinor Dashwood" },
    {text:"The three-minute-long tracking shot in “Goodfellas” ends on what legendary comedian?",
      first_choice: "Jack Benny",
      second_choice: "Don Rickles",
      third_choice: "Henny Youngman",
      correct_answer: "Henny Youngman" },
    {text:"In 1986, dozens of new animal species were discovered in a cave sealed off from the world in what country?",
      first_choice: "Romania",
      second_choice: "Ukraine",
      third_choice: "Moldova",
      correct_answer: "Romania" },
    {text:"'I know it was you, Fredo' is a line from what classic mafia movie sequel?",
      first_choice: "The Godfather: Part II",
      second_choice: "Grease 2",
      third_choice: "Speed 2: Cruise Control",
      correct_answer: "The Godfather: Part II" },
    {text:"Which team managed to beat Tottenham Hotspurs in the finals of the 2018-19 Champions League Final?",
      first_choice: "Manchester United (LOL)",
      second_choice: "FC Barcelona",
      third_choice: "Liverpool FC",
      correct_answer: "Liverpool FC" },
    {text:"What does Dorothy have to do with her ruby slippers in order to go home?",
      first_choice: "Take them off",
      second_choice: "Tap them together",
      third_choice: "Put them in water",
      correct_answer: "Tap them together" },
    {text:"The hit biopic “Straight Outta Compton” is based on what music group?",
      first_choice: "Wu-Tang Clan",
      second_choice: "Fugees",
      third_choice: "NWA",
      correct_answer: "NWA" },
    {text:"Jim Carrey became the first actor to make $20 million per movie for what film?",
      first_choice: "Bruce Almighty",
      second_choice: "The Mask",
      third_choice: "The Cable Guy",
      correct_answer: "The Cable Guy" },
    {text:"Which of these romantic movies does NOT have a dramatic airport scene?",
      first_choice: "Garden State",
      second_choice: "Love Actually",
      third_choice: "Maid in Manhattan",
      correct_answer: "Maid in Manhattan" },
    {text:"What is the response after Indiana Jones first asks, “Snakes, why’d it have to be snakes?”",
      first_choice: "Good luck, Dr.Jones",
      second_choice: "Try charming them",
      third_choice: "Asps! Very dangerous",
      correct_answer: "Asps! Very dangerous" },
    {text:"Which of these on-screen Batmans has also played a fictional US president in a movie?",
      first_choice: "Val Kilmer",
      second_choice: "Christian Bale",
      third_choice: "Michael Keaton",
      correct_answer: "Michael Keaton" },
    {text:"Which male tennis player has won the highest number of grand slams?",
      first_choice: "Andy Roddick",
      second_choice: "Roger Federer",
      third_choice: "Raphael Nadal",
      correct_answer: "Roger Federer" },
    {text:"Paul Micheal Lavesque is the real name of which famous wrestler in the WWE?",
      first_choice: "The Rock",
      second_choice: "Man Kind",
      third_choice: "Triple HHH",
      correct_answer: "Triple HHH" }
  ]
  
  user_list.each do |u|
    User.create(u)
  end
  
  question_list.each do |q|
    question = User.first.questions.build(q)
    question.save
  end
  