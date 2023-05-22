enum PlanetType { terrestrial, gas, ice }

/// Enum that enumerates the different plants in our solar system
/// and some of their properties
enum Planet {
  ///用逗号 ',' 分割，用分号 ; 结束枚举
  ///貌似这个必须枚举必须放在开头
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  earth(planetType: PlanetType.terrestrial, moons: 12, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance generating constructor
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final yourPlanet = Planet.earth;
  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }
}
