// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingModel _$OnboardingModelFromJson(Map json) => OnboardingModel(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      asset: json['asset'] as String,
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$OnboardingModelToJson(OnboardingModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'asset': instance.asset,
      'colors': instance.colors,
    };
