import 'dart:io';

void main() {
  var name = "Mukund";

  int age = 16;

  String justAtext = "My name is $name";
  justAtext += ", and my age is $age";
  print(justAtext);

  double averageRating = 7;
  averageRating = .7;
  print(averageRating);

  bool isOpen = true;
  isOpen = false;
  print(isOpen);

  final String muku = "Mukund"; // same for const
  // muku = "Pro";
  print(muku);

  // ignore: unused_local_variable
  // int point;

  // print(point); // null saftey
  int? point;

  print(point);

  // print("What is your name ?");

  stdout.write("What is your name ?: ");

  String? namee = stdin.readLineSync();

  print("Hii $namee");
}
