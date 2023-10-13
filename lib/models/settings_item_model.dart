import '../values/config/app_exports.dart';

class SettingsItemModel {
  final String leading;
  final String title;
  final List<Widget> actions;
  final bool isTopItem;
  final bool isBottomItem;
  final bool showColor;

  SettingsItemModel({
    required this.leading,
    required this.title,
    required this.actions,
    required this.isTopItem,
    required this.isBottomItem,
    this.showColor = false,
  });

  SettingsItemModel copyWith({
    String? leading,
    String? title,
    List<Widget>? actions,
    bool? isTopItem,
    bool? isBottomItem,
    bool? showColor,
  }) {
    return SettingsItemModel(
      leading: leading ?? this.leading,
      title: title ?? this.title,
      actions: actions ?? this.actions,
      isTopItem: isTopItem ?? this.isTopItem,
      isBottomItem: isBottomItem ?? this.isBottomItem,
      showColor: showColor ?? this.showColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'leading': leading,
      'title': title,
      'actions': actions,
      'isTopItem': isTopItem,
      'isBottomItem': isBottomItem,
      'showColor': showColor,
    };
  }

  factory SettingsItemModel.fromMap(Map<String, dynamic> map) {
    return SettingsItemModel(
      leading: map['leading'] as String,
      title: map['title'] as String,
      actions: map['actions'] as List<Widget>,
      isTopItem: map['isTopItem'] as bool,
      isBottomItem: map['isBottomItem'] as bool,
      showColor: map['showColor'] as bool,
    );
  }
}
