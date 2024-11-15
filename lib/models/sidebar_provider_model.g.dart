// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sidebar_provider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SidebarProviderModelImpl _$$SidebarProviderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SidebarProviderModelImpl(
      subView: $enumDecodeNullable(_$SubViewNameEnumMap, json['subView']) ??
          SubViewName.main,
      sidebarIndex: (json['sidebarIndex'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SidebarProviderModelImplToJson(
        _$SidebarProviderModelImpl instance) =>
    <String, dynamic>{
      'subView': _$SubViewNameEnumMap[instance.subView]!,
      'sidebarIndex': instance.sidebarIndex,
    };

const _$SubViewNameEnumMap = {
  SubViewName.main: 'main',
  SubViewName.detail: 'detail',
};
