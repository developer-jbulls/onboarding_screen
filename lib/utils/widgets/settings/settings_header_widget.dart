import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/utils/styles/onboarding_app_colors.dart';

import '../../../values/config/app_exports.dart';

class SettingsHeaderWidget extends StatelessWidget {
  const SettingsHeaderWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15.0),
        Text(
          title,
          style: GoogleFonts.roboto(
            color: OnboardingAppColors.secondary,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
