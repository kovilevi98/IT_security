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

  final _$getByIdAsyncAction = AsyncAction('_MainStoreStore.getById');

  @override
  Future<void> getById(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id}) {
    return _$getByIdAsyncAction.run(() => super.getById(
        onSuccess: onSuccess, onError: onError, context: context, id: id));
  }

  final _$deleteByIdAsyncAction = AsyncAction('_MainStoreStore.deleteById');

  @override
  Future<void> deleteById(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id}) {
    return _$deleteByIdAsyncAction.run(() => super.deleteById(
        onSuccess: onSuccess, onError: onError, context: context, id: id));
  }

  final _$getCommentsByIdAsyncAction =
      AsyncAction('_MainStoreStore.getCommentsById');

  @override
  Future<void> getCommentsById(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id}) {
    return _$getCommentsByIdAsyncAction.run(() => super.getCommentsById(
        onSuccess: onSuccess, onError: onError, context: context, id: id));
  }

  final _$uploadCommentAsyncAction =
      AsyncAction('_MainStoreStore.uploadComment');

  @override
  Future<void> uploadComment(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id,
      required int id2}) {
    return _$uploadCommentAsyncAction.run(() => super.uploadComment(
        onSuccess: onSuccess,
        onError: onError,
        context: context,
        id: id,
        id2: id2));
  }

  final _$deleteCommentAsyncAction =
      AsyncAction('_MainStoreStore.deleteComment');

  @override
  Future<void> deleteComment(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id,
      required int id2}) {
    return _$deleteCommentAsyncAction.run(() => super.deleteComment(
        onSuccess: onSuccess,
        onError: onError,
        context: context,
        id: id,
        id2: id2));
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
