import '../../../values/config/app_exports.dart';
import 'page_indicator_widget.dart';

class PageIndicatorsWidget extends StatelessWidget {
  const PageIndicatorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return SizedBox(
      width: width,
      height: kToolbarHeight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: OnboardingLists.onboardingViews.length,
            itemBuilder: (_, index) => Observer(
              builder: (_) => PageIndicatorWidget(
                isActive: state.activePage == index,
              ),
            ),
            separatorBuilder: (_, __) => space10h,
          ),
        ],
      ),
    );
  }
}
