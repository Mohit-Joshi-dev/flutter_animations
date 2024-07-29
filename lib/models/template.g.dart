// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Template _$TemplateFromJson(Map<String, dynamic> json) => Template(
      title: json['title'] as String,
      subTitle: json['subTitle'] as String? ?? "",
      gifURL: json['gifURL'] as String?,
    );

Map<String, dynamic> _$TemplateToJson(Template instance) => <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'gifURL': instance.gifURL,
    };
