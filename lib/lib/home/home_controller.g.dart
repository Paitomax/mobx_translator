// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  final _$translatedAtom = Atom(name: 'HomeControllerBase.translated');

  @override
  String get translated {
    _$translatedAtom.context.enforceReadPolicy(_$translatedAtom);
    _$translatedAtom.reportObserved();
    return super.translated;
  }

  @override
  set translated(String value) {
    _$translatedAtom.context.conditionallyRunInAction(() {
      super.translated = value;
      _$translatedAtom.reportChanged();
    }, _$translatedAtom, name: '${_$translatedAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: 'HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$translateAsyncAction = AsyncAction('translate');

  @override
  Future translate(String text) {
    return _$translateAsyncAction.run(() => super.translate(text));
  }

  @override
  String toString() {
    final string =
        'translated: ${translated.toString()},loading: ${loading.toString()}';
    return '{$string}';
  }
}
