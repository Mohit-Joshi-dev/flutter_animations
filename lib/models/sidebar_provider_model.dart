import 'package:flutter_animations/controllers/sidebar_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'sidebar_provider_model.freezed.dart';
part 'sidebar_provider_model.g.dart';

@freezed
class SidebarProviderModel with _$SidebarProviderModel {
  const factory SidebarProviderModel({
    @Default(SubViewName.main) SubViewName subView,
    @Default(0) int sidebarIndex,
  }) = _SidebarProviderModel;

  factory SidebarProviderModel.fromJson(Map<String, Object?> json) =>
      _$SidebarProviderModelFromJson(json);
}
