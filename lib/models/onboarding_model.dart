import 'package:json_annotation/json_annotation.dart';

part 'onboarding_model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class OnboardingModel {
  late final String title;
  late final String subtitle;
  late final String asset;
  late final List<String> colors;

  OnboardingModel({
    required this.title,
    required this.subtitle,
    required this.asset,
    required this.colors,
  });

  OnboardingModel copyWith({
    String? title,
    String? subtitle,
    String? asset,
    List<String>? colors,
  }) {
    return OnboardingModel(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      asset: asset ?? this.asset,
      colors: colors ?? this.colors,
    );
  }

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingModelFromJson(json);

  Map<String, dynamic> toJson() => _$OnboardingModelToJson(this);
}
