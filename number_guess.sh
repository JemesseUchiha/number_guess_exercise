#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# ASK FOR THE NAME
echo "Enter your username:"
read USERNAME
PLAYER=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# IF THE NAME EXISTS
if [[ ! -z $PLAYER ]]
then
  # WELCOME THE USER
  GAMES=$($PSQL "SELECT COUNT(games_id) FROM games WHERE user_id=$PLAYER")
  BEST_GAME=$($PSQL "SELECT MIN(try_number) FROM games WHERE user_id=$PLAYER")
  echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST_GAME guesses."
else
  # CREATE A NEW USER
  NEW_PLAYER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  PLAYER=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

# START THE GAME
NUMERO=$(( RANDOM % 1000 + 1 ))
NUMBER_TRY=0

# INSERT NEW GAME RECORD
NEW_GAME=$($PSQL "INSERT INTO games(user_id, secret_number, try_number) VALUES($PLAYER, $NUMERO, 0) RETURNING games_id")

# GET THE INPUT
echo "Guess the secret number between 1 and 1000:"

while true
do
  read THE_NUMBER
  # VALIDATE INPUT
  if [[ ! $THE_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # INCREASE TRY COUNTER
  NUMBER_TRY=$((NUMBER_TRY + 1))

  # COMPARE THE INPUT WITH THE SECRET NUMBER
  if [[ $THE_NUMBER -lt $NUMERO ]]
  then
    echo "It's higher than that, guess again:"
  elif [[ $THE_NUMBER -gt $NUMERO ]]
  then
    echo "It's lower than that, guess again:"
  else
    # CORRECT GUESS
    echo "You guessed it in $NUMBER_TRY tries. The secret number was $NUMERO. Nice job!"
    break
  fi
done

# UPDATE THE GAME WITH NUMBER OF TRIES
$PSQL "UPDATE games SET try_number=$NUMBER_TRY WHERE games_id=$NEW_GAME"
