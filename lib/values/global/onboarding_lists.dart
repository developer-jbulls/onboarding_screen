import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:onboarding_screen/models/onboarding_model.dart';
import 'package:onboarding_screen/models/settings_item_model.dart';
import 'package:onboarding_screen/utils/widgets/common/ios_toggle_switch_widget.dart';

import '../config/app_exports.dart';

class OnboardingLists {
  static final List<OnboardingModel> onboardingViews = [
    OnboardingModel(
      title: 'Wide Venue Selection',
      subtitle:
          'Explore gaming spots near you. Choose from 500+ gaming destinations',
      asset: '${animationsPath}venue_on_map.json',
      colors: [],
    ),
    OnboardingModel(
      title: 'Endless Gaming Choices',
      subtitle:
          'Secure your spot online in just few taps. Pick from over 40 exciting categories',
      asset: '${animationsPath}categories.json',
      colors: [],
    ),
    OnboardingModel(
      title: 'Build Your Dream Team',
      subtitle:
          'Record match scores and stats. Create teams and add your friends',
      asset: '${animationsPath}team.json',
      colors: [],
    ),
    OnboardingModel(
      title: 'Informed Decision Making',
      subtitle:
          'Check out ratings and reviews. View photos of your desired venue',
      asset: '${animationsPath}reviews.json',
      colors: [],
    ),
    OnboardingModel(
      title: 'Find Venues Near You',
      subtitle: 'Get location-based recommendations. Ready to get started?',
      asset: '${animationsPath}venues_near_me.json',
      colors: [],
    ),
    OnboardingModel(
      title: 'Made with ❤️ in Bharat',
      subtitle: 'Powered by J Bulls Infotech Pvt. Ltd.',
      asset: '${animationsPath}bharat.json',
      colors: [],
    ),
  ];

  static final List<List<Color>> gradients = [
    [
      OnboardingAppColors.brandPrimaryColor,
      OnboardingAppColors.brandSecondaryColor,
    ],
    [
      OnboardingAppColors.brandPrimaryDarkColor,
      OnboardingAppColors.brandSecondaryDarkColor,
    ],
    [
      OnboardingAppColors.brandPrimaryColor,
      OnboardingAppColors.brandSecondaryColor,
    ],
    [
      OnboardingAppColors.brandPrimaryDarkColor,
      OnboardingAppColors.brandSecondaryDarkColor,
    ],
    [
      OnboardingAppColors.brandPrimaryColor,
      OnboardingAppColors.brandSecondaryColor,
    ],
    [
      OnboardingAppColors.brandPrimaryDarkColor,
      OnboardingAppColors.brandSecondaryDarkColor,
    ],
  ];

  static List<SettingsItemModel> settingsOptions(BuildContext context) {
    final state = context.read<AppState>();
    return [
      SettingsItemModel(
        leading: '',
        title: 'Liquid Reveal',
        actions: [
          Observer(
            builder: (_) => IosToggleSwitch(
              onTap: state.toggleWaveType,
              isActive: state.waveType == WaveType.liquidReveal,
            ),
          ),
        ],
        isTopItem: true,
        isBottomItem: false,
      ),
      SettingsItemModel(
        leading: '',
        title: 'Full Transition Value',
        actions: [
          SizedBox(
            width: 100,
            height: kToolbarHeight,
            child: TextField(
              controller: state.fullTransitionValueController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              onEditingComplete: state.updateFullTransitionValue,
            ),
          ),
        ],
        isTopItem: false,
        isBottomItem: false,
      ),
      SettingsItemModel(
        leading: '',
        title: 'Side Reveal',
        actions: [
          Observer(
            builder: (_) => IosToggleSwitch(
              onTap: state.toggleSideReveal,
              isActive: state.enableSideReveal,
            ),
          ),
        ],
        isTopItem: false,
        isBottomItem: false,
      ),
      SettingsItemModel(
        leading: '',
        title: 'Drag From Reveal Area',
        actions: [
          Observer(
            builder: (_) => IosToggleSwitch(
              onTap: state.toggleDragFromRevealArea,
              isActive: state.preferDragFromRevealedArea,
            ),
          ),
        ],
        isTopItem: false,
        isBottomItem: false,
      ),
      SettingsItemModel(
        leading: '',
        title: 'Enable Loop',
        actions: [
          Observer(
            builder: (_) => IosToggleSwitch(
              onTap: state.toggleLoop,
              isActive: state.enableLoop,
            ),
          ),
        ],
        isTopItem: false,
        isBottomItem: false,
      ),
      SettingsItemModel(
        leading: '',
        title: 'Ignore User Gesture',
        actions: [
          Observer(
            builder: (_) => IosToggleSwitch(
              onTap: state.toggleIgnoreUserGestureWhileAnimating,
              isActive: state.ignoreUserGestureWhileAnimating,
            ),
          ),
        ],
        isTopItem: false,
        isBottomItem: true,
      ),
    ];
  }
}
