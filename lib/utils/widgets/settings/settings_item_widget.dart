import '../../../values/config/app_exports.dart';
import '../common/custom_image_icon.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.leading,
    required this.title,
    required this.actions,
    required this.isTopItem,
    required this.isBottomItem,
    this.showColor = false,
  });

  final String leading;
  final String title;
  final List<Widget> actions;
  final bool isTopItem;
  final bool isBottomItem;
  final bool showColor;

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return Observer(
      builder: (_) => Container(
        width: width,
        height: kToolbarHeight,
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 1.0,
        ),
        decoration: BoxDecoration(
          color: state.darkMode
              ? OnboardingAppColors.fgDark
              : OnboardingAppColors.fgLight,
          borderRadius: BorderRadius.only(
            topLeft: isTopItem ? const Radius.circular(16) : Radius.zero,
            topRight: isTopItem ? const Radius.circular(16) : Radius.zero,
            bottomLeft: isBottomItem ? const Radius.circular(16) : Radius.zero,
            bottomRight: isBottomItem ? const Radius.circular(16) : Radius.zero,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10.0),
            if (leading != '')
              CustomImageIcon(
                asset: leading,
                showColor: showColor,
              ),
            Text(
              title,
              style: GoogleFonts.roboto(
                color: state.darkMode
                    ? OnboardingAppColors.titleDark
                    : OnboardingAppColors.titleLight,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(width: 10.0),
            const Spacer(),
            ...actions,
            const SizedBox(width: 20.0),
          ],
        ),
      ),
    );
  }
}
