// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_native_ad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsNativeAdState {
  String get adUnitId => throw _privateConstructorUsedError;
  TemplateType get templateType => throw _privateConstructorUsedError;
  NativeAd? get nativeAd => throw _privateConstructorUsedError;
  ApiStateStatus get loadingStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdsNativeAdStateCopyWith<AdsNativeAdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsNativeAdStateCopyWith<$Res> {
  factory $AdsNativeAdStateCopyWith(
          AdsNativeAdState value, $Res Function(AdsNativeAdState) then) =
      _$AdsNativeAdStateCopyWithImpl<$Res, AdsNativeAdState>;
  @useResult
  $Res call(
      {String adUnitId,
      TemplateType templateType,
      NativeAd? nativeAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class _$AdsNativeAdStateCopyWithImpl<$Res, $Val extends AdsNativeAdState>
    implements $AdsNativeAdStateCopyWith<$Res> {
  _$AdsNativeAdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? templateType = null,
    Object? nativeAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AdsNativeAdStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String adUnitId,
      TemplateType templateType,
      NativeAd? nativeAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AdsNativeAdStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? templateType = null,
    Object? nativeAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_$InitialImpl(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.adUnitId,
      required this.templateType,
      this.nativeAd,
      required this.loadingStatus});

  @override
  final String adUnitId;
  @override
  final TemplateType templateType;
  @override
  final NativeAd? nativeAd;
  @override
  final ApiStateStatus loadingStatus;

  @override
  String toString() {
    return 'AdsNativeAdState.initial(adUnitId: $adUnitId, templateType: $templateType, nativeAd: $nativeAd, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.templateType, templateType) ||
                other.templateType == templateType) &&
            (identical(other.nativeAd, nativeAd) ||
                other.nativeAd == nativeAd) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, adUnitId, templateType, nativeAd, loadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)
        initial,
  }) {
    return initial(adUnitId, templateType, nativeAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)?
        initial,
  }) {
    return initial?.call(adUnitId, templateType, nativeAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String adUnitId, TemplateType templateType,
            NativeAd? nativeAd, ApiStateStatus loadingStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(adUnitId, templateType, nativeAd, loadingStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdsNativeAdState {
  const factory _Initial(
      {required final String adUnitId,
      required final TemplateType templateType,
      final NativeAd? nativeAd,
      required final ApiStateStatus loadingStatus}) = _$InitialImpl;

  @override
  String get adUnitId;
  @override
  TemplateType get templateType;
  @override
  NativeAd? get nativeAd;
  @override
  ApiStateStatus get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
