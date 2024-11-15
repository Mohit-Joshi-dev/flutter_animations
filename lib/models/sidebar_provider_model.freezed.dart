// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sidebar_provider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SidebarProviderModel _$SidebarProviderModelFromJson(Map<String, dynamic> json) {
  return _SidebarProviderModel.fromJson(json);
}

/// @nodoc
mixin _$SidebarProviderModel {
  SubViewName get subView => throw _privateConstructorUsedError;
  int get sidebarIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SidebarProviderModelCopyWith<SidebarProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidebarProviderModelCopyWith<$Res> {
  factory $SidebarProviderModelCopyWith(SidebarProviderModel value,
          $Res Function(SidebarProviderModel) then) =
      _$SidebarProviderModelCopyWithImpl<$Res, SidebarProviderModel>;
  @useResult
  $Res call({SubViewName subView, int sidebarIndex});
}

/// @nodoc
class _$SidebarProviderModelCopyWithImpl<$Res,
        $Val extends SidebarProviderModel>
    implements $SidebarProviderModelCopyWith<$Res> {
  _$SidebarProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subView = null,
    Object? sidebarIndex = null,
  }) {
    return _then(_value.copyWith(
      subView: null == subView
          ? _value.subView
          : subView // ignore: cast_nullable_to_non_nullable
              as SubViewName,
      sidebarIndex: null == sidebarIndex
          ? _value.sidebarIndex
          : sidebarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SidebarProviderModelImplCopyWith<$Res>
    implements $SidebarProviderModelCopyWith<$Res> {
  factory _$$SidebarProviderModelImplCopyWith(_$SidebarProviderModelImpl value,
          $Res Function(_$SidebarProviderModelImpl) then) =
      __$$SidebarProviderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubViewName subView, int sidebarIndex});
}

/// @nodoc
class __$$SidebarProviderModelImplCopyWithImpl<$Res>
    extends _$SidebarProviderModelCopyWithImpl<$Res, _$SidebarProviderModelImpl>
    implements _$$SidebarProviderModelImplCopyWith<$Res> {
  __$$SidebarProviderModelImplCopyWithImpl(_$SidebarProviderModelImpl _value,
      $Res Function(_$SidebarProviderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subView = null,
    Object? sidebarIndex = null,
  }) {
    return _then(_$SidebarProviderModelImpl(
      subView: null == subView
          ? _value.subView
          : subView // ignore: cast_nullable_to_non_nullable
              as SubViewName,
      sidebarIndex: null == sidebarIndex
          ? _value.sidebarIndex
          : sidebarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SidebarProviderModelImpl
    with DiagnosticableTreeMixin
    implements _SidebarProviderModel {
  const _$SidebarProviderModelImpl(
      {this.subView = SubViewName.main, this.sidebarIndex = 0});

  factory _$SidebarProviderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SidebarProviderModelImplFromJson(json);

  @override
  @JsonKey()
  final SubViewName subView;
  @override
  @JsonKey()
  final int sidebarIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SidebarProviderModel(subView: $subView, sidebarIndex: $sidebarIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SidebarProviderModel'))
      ..add(DiagnosticsProperty('subView', subView))
      ..add(DiagnosticsProperty('sidebarIndex', sidebarIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SidebarProviderModelImpl &&
            (identical(other.subView, subView) || other.subView == subView) &&
            (identical(other.sidebarIndex, sidebarIndex) ||
                other.sidebarIndex == sidebarIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subView, sidebarIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SidebarProviderModelImplCopyWith<_$SidebarProviderModelImpl>
      get copyWith =>
          __$$SidebarProviderModelImplCopyWithImpl<_$SidebarProviderModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SidebarProviderModelImplToJson(
      this,
    );
  }
}

abstract class _SidebarProviderModel implements SidebarProviderModel {
  const factory _SidebarProviderModel(
      {final SubViewName subView,
      final int sidebarIndex}) = _$SidebarProviderModelImpl;

  factory _SidebarProviderModel.fromJson(Map<String, dynamic> json) =
      _$SidebarProviderModelImpl.fromJson;

  @override
  SubViewName get subView;
  @override
  int get sidebarIndex;
  @override
  @JsonKey(ignore: true)
  _$$SidebarProviderModelImplCopyWith<_$SidebarProviderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
