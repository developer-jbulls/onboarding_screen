// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_management_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppStateBase, Store {
  late final _$_darkModeAtom =
      Atom(name: '_AppStateBase._darkMode', context: context);

  bool get darkMode {
    _$_darkModeAtom.reportRead();
    return super._darkMode;
  }

  @override
  bool get _darkMode => darkMode;

  @override
  set _darkMode(bool value) {
    _$_darkModeAtom.reportWrite(value, super._darkMode, () {
      super._darkMode = value;
    });
  }

  late final _$_activePageAtom =
      Atom(name: '_AppStateBase._activePage', context: context);

  int get activePage {
    _$_activePageAtom.reportRead();
    return super._activePage;
  }

  @override
  int get _activePage => activePage;

  @override
  set _activePage(int value) {
    _$_activePageAtom.reportWrite(value, super._activePage, () {
      super._activePage = value;
    });
  }

  late final _$_liquidControllerAtom =
      Atom(name: '_AppStateBase._liquidController', context: context);

  LiquidController? get liquidController {
    _$_liquidControllerAtom.reportRead();
    return super._liquidController;
  }

  @override
  LiquidController? get _liquidController => liquidController;

  @override
  set _liquidController(LiquidController? value) {
    _$_liquidControllerAtom.reportWrite(value, super._liquidController, () {
      super._liquidController = value;
    });
  }

  late final _$_updateTypeAtom =
      Atom(name: '_AppStateBase._updateType', context: context);

  UpdateType? get updateType {
    _$_updateTypeAtom.reportRead();
    return super._updateType;
  }

  @override
  UpdateType? get _updateType => updateType;

  @override
  set _updateType(UpdateType? value) {
    _$_updateTypeAtom.reportWrite(value, super._updateType, () {
      super._updateType = value;
    });
  }

  late final _$_waveTypeAtom =
      Atom(name: '_AppStateBase._waveType', context: context);

  WaveType get waveType {
    _$_waveTypeAtom.reportRead();
    return super._waveType;
  }

  @override
  WaveType get _waveType => waveType;

  @override
  set _waveType(WaveType value) {
    _$_waveTypeAtom.reportWrite(value, super._waveType, () {
      super._waveType = value;
    });
  }

  late final _$_fullTransitionValueAtom =
      Atom(name: '_AppStateBase._fullTransitionValue', context: context);

  int get fullTransitionValue {
    _$_fullTransitionValueAtom.reportRead();
    return super._fullTransitionValue;
  }

  @override
  int get _fullTransitionValue => fullTransitionValue;

  @override
  set _fullTransitionValue(int value) {
    _$_fullTransitionValueAtom.reportWrite(value, super._fullTransitionValue,
        () {
      super._fullTransitionValue = value;
    });
  }

  late final _$_enableSideRevealAtom =
      Atom(name: '_AppStateBase._enableSideReveal', context: context);

  bool get enableSideReveal {
    _$_enableSideRevealAtom.reportRead();
    return super._enableSideReveal;
  }

  @override
  bool get _enableSideReveal => enableSideReveal;

  @override
  set _enableSideReveal(bool value) {
    _$_enableSideRevealAtom.reportWrite(value, super._enableSideReveal, () {
      super._enableSideReveal = value;
    });
  }

  late final _$_preferDragFromRevealedAreaAtom =
      Atom(name: '_AppStateBase._preferDragFromRevealedArea', context: context);

  bool get preferDragFromRevealedArea {
    _$_preferDragFromRevealedAreaAtom.reportRead();
    return super._preferDragFromRevealedArea;
  }

  @override
  bool get _preferDragFromRevealedArea => preferDragFromRevealedArea;

  @override
  set _preferDragFromRevealedArea(bool value) {
    _$_preferDragFromRevealedAreaAtom
        .reportWrite(value, super._preferDragFromRevealedArea, () {
      super._preferDragFromRevealedArea = value;
    });
  }

  late final _$_enableLoopAtom =
      Atom(name: '_AppStateBase._enableLoop', context: context);

  bool get enableLoop {
    _$_enableLoopAtom.reportRead();
    return super._enableLoop;
  }

  @override
  bool get _enableLoop => enableLoop;

  @override
  set _enableLoop(bool value) {
    _$_enableLoopAtom.reportWrite(value, super._enableLoop, () {
      super._enableLoop = value;
    });
  }

  late final _$_ignoreUserGestureWhileAnimatingAtom = Atom(
      name: '_AppStateBase._ignoreUserGestureWhileAnimating', context: context);

  bool get ignoreUserGestureWhileAnimating {
    _$_ignoreUserGestureWhileAnimatingAtom.reportRead();
    return super._ignoreUserGestureWhileAnimating;
  }

  @override
  bool get _ignoreUserGestureWhileAnimating => ignoreUserGestureWhileAnimating;

  @override
  set _ignoreUserGestureWhileAnimating(bool value) {
    _$_ignoreUserGestureWhileAnimatingAtom
        .reportWrite(value, super._ignoreUserGestureWhileAnimating, () {
      super._ignoreUserGestureWhileAnimating = value;
    });
  }

  late final _$_AppStateBaseActionController =
      ActionController(name: '_AppStateBase', context: context);

  @override
  void toggleDarkMode() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleDarkMode');
    try {
      return super.toggleDarkMode();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateActivePage(int value) {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.updateActivePage');
    try {
      return super.updateActivePage(value);
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleWaveType() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleWaveType');
    try {
      return super.toggleWaveType();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateFullTransitionValue() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.updateFullTransitionValue');
    try {
      return super.updateFullTransitionValue();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleSideReveal() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleSideReveal');
    try {
      return super.toggleSideReveal();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleDragFromRevealArea() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleDragFromRevealArea');
    try {
      return super.toggleDragFromRevealArea();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLoop() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleLoop');
    try {
      return super.toggleLoop();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleIgnoreUserGestureWhileAnimating() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.toggleIgnoreUserGestureWhileAnimating');
    try {
      return super.toggleIgnoreUserGestureWhileAnimating();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void skipToLast() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.skipToLast');
    try {
      return super.skipToLast();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goToFirst() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.goToFirst');
    try {
      return super.goToFirst();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void next() {
    final _$actionInfo =
        _$_AppStateBaseActionController.startAction(name: '_AppStateBase.next');
    try {
      return super.next();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void back() {
    final _$actionInfo =
        _$_AppStateBaseActionController.startAction(name: '_AppStateBase.back');
    try {
      return super.back();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.dispose');
    try {
      return super.dispose();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
