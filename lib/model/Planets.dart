import 'package:cashmoney/model/Planet.dart';
class PlanetDao {

  static final List<Planet> planets = [
    const Planet(
      id: "1",
      name: "Mahuri Ventures",
      location: "Milkyway Galaxy",
      balance: "50,000/-",
    ),
    const Planet(
      id: "2",
      name: "Anusha's Restro",
      location: "Milkyway Galaxy",
      balance: "",
    ),
    const Planet(
      id: "3",
      name: "Moon",
      location: "Milkyway Galaxy",
      balance: "",
    ),
    const Planet(
      id: "4",
      name: "Earth",
      location: "Milkyway Galaxy",
      balance: "",
    ),
    const Planet(
      id: "5",
      name: "Mercury",
      location: "Milkyway Galaxy",
      balance: "",
    ),
  ];

  static Planet getPlanetById(id) {
    return planets
        .where((p) => p.id == id)
        .first;
  }
}