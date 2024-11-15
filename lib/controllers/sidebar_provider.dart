import 'package:flutter_animations/controllers/sidebar_controller.dart';
import 'package:flutter_animations/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sidebar_provider.g.dart';

@riverpod
class SidebarProvider extends _$SidebarProvider {
  late SidebarProviderModel _sidebar;

  SidebarProviderModel get sidebar => _sidebar;

  @override
  SidebarProviderModel build() {
    _sidebar =
        const SidebarProviderModel(sidebarIndex: 0, subView: SubViewName.main);
    return _sidebar;
  }

  void update(SidebarProviderModel model) {}
}
