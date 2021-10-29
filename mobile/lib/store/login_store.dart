import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = Login with _$LoginStore;

abstract class Login with Store {
 // var logger = Logger();
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isVisible = false;

  @observable
  bool rememberMe = false;


}
