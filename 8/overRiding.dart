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
  // print(pizza.format());
  print(pizza.format());
  print(noodles);
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

  // @override
  String toString() {
    return format(); // Default : Instance of 'NewMenuItem'
  }
}

class Pizza extends NewMenuItem {
  List<String> topings;
  Pizza(super.title, super.price, this.topings);

  // String topingsC() {
  //   return "Topings you asked for $topings";
  // }

  // @override := your wish either use it or not works without this even for newer version of dart
  String format() {
    var formattedToppings = "Contains: ";
    var i = 0;
    for (final t in topings) {
      formattedToppings += "\n\t$i $t";
      i++;
    }

    return "$title := Rs$price \n$formattedToppings";
  }
}
