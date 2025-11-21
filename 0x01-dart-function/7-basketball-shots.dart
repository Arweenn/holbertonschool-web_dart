/// Function that determines the winner of a basketball game
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  
  // Calculate scores for team A
  int scoreA = (teamA['Free throws'] ?? 0) * 1 +
      (teamA['2 pointers'] ?? 0) * 2 +
      (teamA['3 pointers'] ?? 0) * 3;
  
  // Calculate scores for team B
  int scoreB = (teamB['Free throws'] ?? 0) * 1 +
      (teamB['2 pointers'] ?? 0) * 2 +
      (teamB['3 pointers'] ?? 0) * 3;

  // Determine the winner
  if (scoreA > scoreB) {
    return 1;
  } else if (scoreB > scoreA) {
    return 2;
  } else {
    return 0;
  }
}
