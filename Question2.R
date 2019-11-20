#Kyle Sommerfield and Farai Musariri
#Source this script to begin game

#Generate a random number between 1 and 100
number <- sample(1:100,1)

#Set the variable input as a value outside the set of numbers
input <- 0

#Introduce the game to the player
print("I'm thinking of a number 1-100...You have 10 guesses.")

#Create loop to return feedback based on if the guess is higher, lower, or equal to the generated number
while(input != number)
{
  input <- readline(prompt="")
  if(input == number)
  {
    cat("Correct!")
  }
  else if (input < number)
  {
    cat("Higher")
  }
  else if (input > number)
  {
    cat("Lower")
  }
}