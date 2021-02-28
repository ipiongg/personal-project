import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int solutionSelected = 0;

  @action
  void setSolutionSelected(int value) => solutionSelected = value;
}
