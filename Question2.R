#Kyle Sommerfield and Farai Musariri
#Generate a random number between 1 and 100
number <- sample(1:100,1)
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