// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStoreStore, Store {
  final _$selectedIndexAtom = Atom(name: '_MainStoreStore.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_MainStoreStore.getData');

  @override
  Future<void> getData(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context}) {
    return _$getDataAsyncAction.run(() => super
        .getData(onSuccess: onSuccess, onError: onError, context: context));
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
