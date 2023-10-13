import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding_screen/utils/widgets/common/page_indicators_list_widget.dart';

import '../../utils/widgets/onboarding/rhombus_button.dart';
import '../../values/config/app_exports.dart';
import 'onboarding_screen_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Observer(
              builder: (_) => LiquidSwipe.builder(
                liquidController: state.liquidController,
                onPageChangeCallback: (value) => state.updateActivePage(value),
                waveType: state.waveType,
                fullTransitionValue: state.fullTransitionValue.toDouble(),
                enableSideReveal: state.enableSideReveal,
                enableLoop: state.enableLoop,
                preferDragFromRevealedArea: state.preferDragFromRevealedArea,
                ignoreUserGestureWhileAnimating:
                    state.ignoreUserGestureWhileAnimating,
                itemBuilder: (_, index) => OnBoardingScreenView(index: index),
                itemCount: OnboardingLists.onboardingViews.length,
              ),
            ),
            Positioned(
              bottom: height * 0.1,
              child: const PageIndicatorsWidget(),
            ),
            Positioned(
              bottom: height * 0.03,
              child: SizedBox(
                width: width,
                child: Observer(
                    builder: (_) => Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (state.activePage != 0)
                              RhombusButton(
                                onPressed: () async => state.back(),
                                title: 'Back',
                              ),
                            RhombusButton(
                              onPressed: () async => state.activePage ==
                                      OnboardingLists.onboardingViews.length - 1
                                  ? navigatorState.currentState!
                                      .pushReplacementNamed(
                                          NavigationServices.auth)
                                  : state.next(),
                              title: state.activePage ==
                                      OnboardingLists.onboardingViews.length - 1
                                  ? 'Login'
                                  : 'Next',
                            ),
                          ],
                        )),
              ),
            ),
            Positioned(
              top: kToolbarHeight * 0.8,
              right: 20.0,
              child: IconButton(
                onPressed: () async => navigatorState.currentState!
                    .pushNamed(NavigationServices.settings),
                icon: const Icon(
                  Icons.settings,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight * 0.8,
              left: 20.0,
              child: TextButton(
                onPressed: () async => navigatorState.currentState!
                    .pushNamed(NavigationServices.settings),
                child: Text(
                  'Skip',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
