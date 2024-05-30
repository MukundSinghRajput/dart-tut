void main() {
  List<int> scores = [100, 90, 29, 89, 0, 3];

  for (int score in scores) {
    if (score == 0) {
      print("Zero work hard to be hero");
    } else if (score < 50) {
      print("You failed to qualify.");
    } else if (score == 100) {
      print("You topped the exam");
    } else {
      print("You passed");
    }
  }

  for (int score in scores.where((element) => element > 50)) {
    print("\n $score");
  }
}
