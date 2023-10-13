import '../../utils/widgets/common/custom_image_icon.dart';
import '../../utils/widgets/common/ios_toggle_switch_widget.dart';
import '../../utils/widgets/settings/settings_header_widget.dart';
import '../../utils/widgets/settings/settings_item_widget.dart';
import '../../values/config/app_exports.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          foregroundColor: OnboardingAppColors.titleDark,
          title: Text(
            'Settings',
            style: GoogleFonts.roboto(
              color: state.darkMode
                  ? OnboardingAppColors.titleDark
                  : OnboardingAppColors.titleLight,
              fontSize: 21.0,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: state.darkMode
                  ? OnboardingAppColors.titleDark
                  : OnboardingAppColors.titleLight,
            ),
            onPressed: () => navigatorState.currentState!.pop(),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  SettingsItemWidget(
                    leading: theme,
                    title: 'Dark Mode',
                    actions: [
                      Observer(builder: (context) {
                        return IosToggleSwitch(
                          isActive: state.darkMode,
                          onTap: state.toggleDarkMode,
                        );
                      }),
                    ],
                    isTopItem: true,
                    isBottomItem: true,
                  ),
                  const SizedBox(height: 20.0),
                  const SettingsHeaderWidget(title: 'Animation'),
                  const SizedBox(height: 10.0),
                  ListView.builder(
                    itemCount: OnboardingLists.settingsOptions(context).length,
                    shrinkWrap: true,
                    primary: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) => SettingsItemWidget(
                      leading: OnboardingLists.settingsOptions(context)[index]
                          .leading,
                      title:
                          OnboardingLists.settingsOptions(context)[index].title,
                      actions: OnboardingLists.settingsOptions(context)[index]
                          .actions,
                      isTopItem: OnboardingLists.settingsOptions(context)[index]
                          .isTopItem,
                      isBottomItem:
                          OnboardingLists.settingsOptions(context)[index]
                              .isBottomItem,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildListItems(AppState state) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) => Container(
        width: width,
        height: kToolbarHeight,
        margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: OnboardingAppColors.bgDark,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: OnboardingAppColors.titleDark.withOpacity(0.7),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(4, 4),
            ),
            BoxShadow(
              color: OnboardingAppColors.titleDark.withOpacity(0.6),
              blurRadius: 1,
              spreadRadius: 0,
              offset: const Offset(-2, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 10.0),
            const CustomImageIcon(asset: theme),
            const SizedBox(width: 10.0),
            Text(
              'Display',
              style: TextStyle(
                color: state.darkMode
                    ? OnboardingAppColors.titleDark
                    : OnboardingAppColors.titleLight,
                fontSize: 22.0,
                fontFamily: 'Times new roman',
              ),
            ),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}
