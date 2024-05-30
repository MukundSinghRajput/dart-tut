void main() {
  Map<int, String> planets = {
    1: "Mercury",
    2: "Venus",
    3: "Mars",
    4: "Earth",
    5: "Jupiter",
    6: "Saturn",
    7: "Uranus",
    8: "Neptune",
  };
  planets[9] = "Pluto";

  print(planets.containsKey(1));
  print(planets.containsValue("Uranus"));

  print(planets[9]);
  planets.remove(9);
  print(planets[9]);

  print(planets.values);
  print(planets.keys);
}
