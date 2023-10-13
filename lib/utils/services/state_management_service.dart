import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:mobx/mobx.dart';
import 'package:onboarding_screen/values/config/app_exports.dart';

part 'state_management_service.g.dart';

class AppState = _AppStateBase with _$AppState;

abstract class _AppStateBase with Store {
  _AppStateBase() {
    _liquidController = LiquidController();
  }

  @readonly
  bool _darkMode = false;

  @action
  void toggleDarkMode() {
    _darkMode = !_darkMode;
  }

  @readonly
  int _activePage = 0;

  @action
  void updateActivePage(int value) {
    _activePage = value;
  }

  @readonly
  LiquidController? _liquidController;

  @readonly
  UpdateType? _updateType = UpdateType.animating;

  @readonly
  WaveType _waveType = WaveType.liquidReveal;

  @action
  void toggleWaveType() {
    if (_waveType != WaveType.liquidReveal) {
      _waveType = WaveType.liquidReveal;
    } else {
      _waveType = WaveType.circularReveal;
    }
  }

  @readonly
  int _fullTransitionValue = 880;
  final TextEditingController fullTransitionValueController =
      TextEditingController()..text = '880';

  @action
  void updateFullTransitionValue() {
    _fullTransitionValue = int.parse(fullTransitionValueController.text);
  }

  @readonly
  bool _enableSideReveal = true;

  @action
  void toggleSideReveal() {
    _enableSideReveal = !_enableSideReveal;
  }

  @readonly
  bool _preferDragFromRevealedArea = true;

  @action
  void toggleDragFromRevealArea() {
    _preferDragFromRevealedArea = !_preferDragFromRevealedArea;
  }

  @readonly
  bool _enableLoop = true;

  @action
  void toggleLoop() {
    _enableLoop = !_enableLoop;
  }

  @readonly
  bool _ignoreUserGestureWhileAnimating = true;

  @action
  void toggleIgnoreUserGestureWhileAnimating() {
    _ignoreUserGestureWhileAnimating = !_ignoreUserGestureWhileAnimating;
  }

  @action
  void skipToLast() {
    _activePage = OnboardingLists.onboardingViews.length - 1;
  }

  @action
  void goToFirst() {
    _activePage = 0;
  }

  @action
  void next() {
    _activePage += 1;
    // _liquidController!.jumpToPage(page: _activePage);
    _liquidController!.animateToPage(page: _activePage);
  }

  @action
  void back() {
    _activePage -= 1;
    // _liquidController!.jumpToPage(page: _activePage);
    _liquidController!.animateToPage(page: _activePage);
  }

  @action
  void dispose() {
    fullTransitionValueController.dispose();
  }
}
