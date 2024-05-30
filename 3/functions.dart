String Pro() {
  return "Pro";
}

pro() {
  return "pro";
}

greetPro(String name, int age) {
  return "Hey $name welcome your age is $age";
}

// named parameter
greetKid({required String name, int? age}) {
  return "Hey $name welcome your age is $age";
}

void main() {
  final pro = Pro();
  print("$pro");

  final poor = pro; // when don't have to pass param don't use ()
  print(poor);
  final greet = greetPro("Mukund", 17);
  print(greet);
  final greet2 = greetKid(age: 17, name: "Mukund");
  print(greet2);
}
