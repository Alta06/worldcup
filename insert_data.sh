#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#!/bin/bash

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  if [[ $YEAR != "year" && $ROUND != "round" && $WINNER != "winner" && $OPPONENT != "opponent" && $WINNER_GOAL != "winner_goal" && $OPPONENT_GOAL != "opponent_goal" ]]
    then
    # get teams_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'"); 
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'"); 

    # if winner not found
    if [[ -z $WINNER_TEAM_ID ]]
      then
      # insert winner
       INSERT_WINNER_TEAM_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
      if [[ $INSERT_WINNER_TEAM_ID == 'INSERT 0 1' ]]
        then 
          echo Inserted into teams, $WINNER
      fi
    fi

    # if opponent not found
    if [[ -z $OPPONENT_TEAM_ID ]]
      then
      # insert opponent
      INSERT_OPPONENT_TEAM_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
      if [[ $INSERT_OPPONENT_TEAM_ID == 'INSERT 0 1' ]]
        then 
        echo Inserted into teams, $OPPONENT
      fi
    fi

    #get game_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year=$YEAR AND round='$ROUND' AND winner_id=$WINNER_ID AND opponent_id=$OPPONENT_ID AND winner_goals=$WINNER_GOALS AND opponent_goals=$OPPONENT_GOALS")

    if [[ -z $GAME_ID ]]
      then
      #insert game_id
       INSERT_GAME_ID=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR,'$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
        if [[ $INSERT_GAME_ID == 'INSERT 0 1' ]]
          then
          echo Inserted into games, year:$YEAR, round:$ROUND, winner_id:$WINNER_ID, opponent_id:$OPPONENT_ID, winner_goals:$WINNER_GOAL, opponent_goals:$OPPONENT_GOALS
        fi
    fi
  '
  fi
done



