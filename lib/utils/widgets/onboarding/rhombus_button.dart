import '../../../values/config/app_exports.dart';
import '../../helpers/custom_shapes.dart';

class RhombusButton extends StatelessWidget {
  const RhombusButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShapes(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white60,
              blurRadius: 2.0,
            ),
          ]),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width * 0.4, kToolbarHeight),
              backgroundColor: OnboardingAppColors.brandSecondaryDarkColor,
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: GoogleFonts.robotoCondensed(
                fontSize: 18.0,
                color: Colors.white60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
