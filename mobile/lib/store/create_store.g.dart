// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateStore on Create, Store {
  final _$imageFileAtom = Atom(name: 'Create.imageFile');

  @override
  File? get imageFile {
    _$imageFileAtom.reportRead();
    return super.imageFile;
  }

  @override
  set imageFile(File? value) {
    _$imageFileAtom.reportWrite(value, super.imageFile, () {
      super.imageFile = value;
    });
  }

  final _$addressTextFieldControllerAtom =
      Atom(name: 'Create.addressTextFieldController');

  @override
  TextEditingController get addressTextFieldController {
    _$addressTextFieldControllerAtom.reportRead();
    return super.addressTextFieldController;
  }

  @override
  set addressTextFieldController(TextEditingController value) {
    _$addressTextFieldControllerAtom
        .reportWrite(value, super.addressTextFieldController, () {
      super.addressTextFieldController = value;
    });
  }

  final _$uploadDataAsyncAction = AsyncAction('Create.uploadData');

  @override
  Future<bool> uploadData(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context}) {
    return _$uploadDataAsyncAction.run(() => super
        .uploadData(onSuccess: onSuccess, onError: onError, context: context));
  }

  @override
  String toString() {
    return '''
imageFile: ${imageFile},
addressTextFieldController: ${addressTextFieldController}
    ''';
  }
}
