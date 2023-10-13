import '../../../values/config/app_exports.dart';

class CustomImageIcon extends StatelessWidget {
  const CustomImageIcon({
    super.key,
    required this.asset,
    this.showColor = false,
  });

  final String asset;
  final bool showColor;

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return Container(
      height: 50.0,
      width: 50.0,
      margin: const EdgeInsets.only(left: 10.0, right: 0.0),
      alignment: Alignment.centerLeft,
      child: Image.asset(
        asset,
        height: 25.0,
        width: 25.0,
        color: showColor
            ? null
            : state.darkMode
                ? OnboardingAppColors.titleDark
                : OnboardingAppColors.titleLight,
      ),
    );
  }
}
