# Q9.) Write the R code which store the player information like name,team,no of times has played,no of runs scored till date.

players <- data.frame(
  name = c("Dhoni","Virat","Rohit","Hardik","Raina"),
  Team = c("CSK","RCB","MI","MI","CSK"),
  Match_Played = c(250,280,270,150,205),
  Runs = c(5200,8500,7000,3200,5528)
)

print(players)

# a. Store the details in the .csv file

write.csv(players,"C:/Users/admin/Desktop/BDAExamPractical/player.csv",row.names = FALSE)
print("Data Stored Successfully")

players <- read.csv("C:/Users/admin/Desktop/BDAExamPractical/player.csv")
print(players)

# b. Display the details of a single player entering the name

player_name <- readline("Enter Player Name:- ")
player_details <- subset(players,name == player_name)
print(player_details)

# c. Display the full details of a player who has scored maximum scores

max_player <- players[which.max(players$Runs),]
print("Player With Maximum Runs")
print(max_player)

# d. Display the average score of each team

avg_team <- aggregate(Runs ~ Team,data = players,mean)
print("Average Runs of each teams")
print(avg_team)

# e. Update Score of a particular team and store the details in .csv through R

update_player <- readline("Enter Player Name to Update:- ")
new_score <- as.numeric(readline("Enter New Score:- "))
if(update_player %in% players$name){
  players$Runs[players$name == update_player] <- new_score
  print("Updated Player Details:- ")
  print(players)
}