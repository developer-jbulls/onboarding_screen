import '../../../values/config/app_exports.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    super.key,
    required this.isActive,
    this.color,
  });

  final bool isActive;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 14.0 : 10.0,
      width: isActive ? 14.0 : 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: isActive ? 4.0 : 1.0,
          ),
        ],
      ),
    );
  }
}
