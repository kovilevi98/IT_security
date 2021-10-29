import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'create_store.g.dart';

class CreateStore = Create with _$CreateStore;

abstract class Create with Store {

  @observable
  File? imageFile;

  @observable
  TextEditingController addressTextFieldController = TextEditingController();

}
