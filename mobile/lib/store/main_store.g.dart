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

  final _$listAtom = Atom(name: '_MainStoreStore.list');

  @override
  ObservableList<CaffDto> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<CaffDto> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$listCommentsAtom = Atom(name: '_MainStoreStore.listComments');

  @override
  ObservableList<CommentDto> get listComments {
    _$listCommentsAtom.reportRead();
    return super.listComments;
  }

  @override
  set listComments(ObservableList<CommentDto> value) {
    _$listCommentsAtom.reportWrite(value, super.listComments, () {
      super.listComments = value;
    });
  }

  final _$totalAtom = Atom(name: '_MainStoreStore.total');

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_MainStoreStore.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$commentDtoPageResponseAtom =
      Atom(name: '_MainStoreStore.commentDtoPageResponse');

  @override
  CommentDtoPageResponse? get commentDtoPageResponse {
    _$commentDtoPageResponseAtom.reportRead();
    return super.commentDtoPageResponse;
  }

  @override
  set commentDtoPageResponse(CommentDtoPageResponse? value) {
    _$commentDtoPageResponseAtom
        .reportWrite(value, super.commentDtoPageResponse, () {
      super.commentDtoPageResponse = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_MainStoreStore.getData');

  @override
  Future<void> getData(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      int? page,
      bool add = false,
      String? name}) {
    return _$getDataAsyncAction.run(() => super.getData(
        onSuccess: onSuccess,
        onError: onError,
        context: context,
        page: page,
        add: add,
        name: name));
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

  final _$downloadByIdAsyncAction = AsyncAction('_MainStoreStore.downloadById');

  @override
  Future<void> downloadById(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required int id}) {
    return _$downloadByIdAsyncAction.run(() =>
        super.downloadById(onSuccess: onSuccess, onError: onError, id: id));
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
      required String message}) {
    return _$uploadCommentAsyncAction.run(() => super.uploadComment(
        onSuccess: onSuccess,
        onError: onError,
        context: context,
        id: id,
        message: message));
  }

  final _$renameCaffAsyncAction = AsyncAction('_MainStoreStore.renameCaff');

  @override
  Future<void> renameCaff(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context,
      required int id,
      required String name}) {
    return _$renameCaffAsyncAction.run(() => super.renameCaff(
        onSuccess: onSuccess,
        onError: onError,
        context: context,
        id: id,
        name: name));
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

  final _$_MainStoreStoreActionController =
      ActionController(name: '_MainStoreStore');

  @override
  void addItem(CaffDto data) {
    final _$actionInfo = _$_MainStoreStoreActionController.startAction(
        name: '_MainStoreStore.addItem');
    try {
      return super.addItem(data);
    } finally {
      _$_MainStoreStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(CaffDto data) {
    final _$actionInfo = _$_MainStoreStoreActionController.startAction(
        name: '_MainStoreStore.removeItem');
    try {
      return super.removeItem(data);
    } finally {
      _$_MainStoreStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItem2(CommentDto data) {
    final _$actionInfo = _$_MainStoreStoreActionController.startAction(
        name: '_MainStoreStore.addItem2');
    try {
      return super.addItem2(data);
    } finally {
      _$_MainStoreStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem2(CommentDto data) {
    final _$actionInfo = _$_MainStoreStoreActionController.startAction(
        name: '_MainStoreStore.removeItem2');
    try {
      return super.removeItem2(data);
    } finally {
      _$_MainStoreStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
list: ${list},
listComments: ${listComments},
total: ${total},
currentPage: ${currentPage},
commentDtoPageResponse: ${commentDtoPageResponse}
    ''';
  }
}
