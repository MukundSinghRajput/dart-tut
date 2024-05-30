void main() {
  List<int?> numbers = [1, 2, 3, 4, 5, null];
  numbers[5] = 6;
  numbers.removeWhere((element) => numbers[1] == 2);
  print(numbers.isEmpty);
  print(numbers.indexOf(2));
  print(numbers);

  Set pro = {"mukund", "mayank"};
  pro.add("mayank");
  var cont = pro.contains("prashant");
  pro.followedBy({"prashant"});
  print(pro);
  print(pro.length);
  print(pro.first);
  print(pro.last);
  print(cont);
  print(pro);
}
