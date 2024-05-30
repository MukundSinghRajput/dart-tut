void main() {
  var menu = MenuItem();

  var noodles = NewMenuItem("Noodles", 100);
  // var pizza = NewMenuItem("Margehrita", 455);

  var pizza = Pizza("Margherita", 455, ["oregano", "chilli pepper"]);

  print(menu.title);
  print(menu.price);

  // print(noodles.title);
  // print(noodles.price);

  // print(pizza.title);
  // print(pizza.price);

  print(noodles.format());
  print(pizza.format());
  print(pizza.topingsC());

  var food = Collection<NewMenuItem>("Menu Items", [pizza, noodles]);

  var random = food.randomItem();
  print("The random items is ${random.title}");
}

class MenuItem {
  String title = "The Menu";
  double price = 100;
}

class NewMenuItem {
  String title;
  double price;

  NewMenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}

class Pizza extends NewMenuItem {
  List<String> topings;
  Pizza(super.title, super.price, this.topings);

  String topingsC() {
    return "Topings you asked for $topings";
  }
}

class Collection<T> {
  String name;
  List<T> data;
  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
