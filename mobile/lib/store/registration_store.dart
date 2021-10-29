import 'package:mobx/mobx.dart';

part 'registration_store.g.dart';

class RegistrationStore = Registration with _$RegistrationStore;

abstract class Registration with Store {
  //var logger = Logger();
  @observable
  String phone = '';

  @observable
  String email = '';

  @observable
  String pass = '';

  @observable
  bool isVisible = false;

  @observable
  bool confirm = false;

  @observable
  bool subscription = false;

}
