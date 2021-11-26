import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'upload_store.g.dart';

class UploadStore = Upload with _$UploadStore;

abstract class Upload with Store {

  @observable
  File? file;

}