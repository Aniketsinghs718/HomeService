import '../models/service.dart';

class DataService {
  static List<Service> getPlumbingServices() {
    return [
      Service('Fix Leaky Faucet', 'We will repair your leaky faucets.', 50),
      Service('Unclog Drain', 'Unclog your kitchen or bathroom drains.', 100),
    ];
  }

  static List<Service> getElectricalServices() {
    return [
      Service('Install Light Fixture', 'Installation of light fixtures.', 75),
      Service('Repair Wiring', 'Fixing faulty wiring in your home.', 150),
    ];
  }
}
