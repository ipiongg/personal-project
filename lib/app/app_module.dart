import 'package:flutter_modular/flutter_modular.dart';
import 'package:personal_portfolio/app/screens/home/home_controller.dart';
import 'package:personal_portfolio/app/screens/home/home_screen.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomeScreen()),
  ];
}
