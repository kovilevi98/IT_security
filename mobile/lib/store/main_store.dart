import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = _MainStoreStore with _$MainStore;

abstract class _MainStoreStore with Store {
  @observable
  int selectedIndex = 0;

}
