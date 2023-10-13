import 'package:lottie/lottie.dart';
import 'package:onboarding_screen/utils/helpers/custom_shapes.dart';

import '../../values/config/app_exports.dart';

class OnBoardingScreenView extends StatelessWidget {
  const OnBoardingScreenView({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: OnboardingLists.gradients[index],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            OnboardingLists.onboardingViews[index].asset,
            height: 300,
            width: 225,
          ),
          space48v,
          Text(
            OnboardingLists.onboardingViews[index].title,
            style: GoogleFonts.robotoCondensed(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          space36v,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              OnboardingLists.onboardingViews[index].subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoCondensed(
                fontSize: 24.0,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
