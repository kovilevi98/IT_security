// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UploadStore on Upload, Store {
  final _$fileAtom = Atom(name: 'Upload.file');

  @override
  File? get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(File? value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$uploadDataAsyncAction = AsyncAction('Upload.uploadData');

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
file: ${file}
    ''';
  }
}
