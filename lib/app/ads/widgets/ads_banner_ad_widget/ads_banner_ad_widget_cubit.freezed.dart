// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_banner_ad_widget_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdsBannerAdWidgetState {
  String get adUnitId => throw _privateConstructorUsedError;
  AdSize get size => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  ApiStateStatus get loadingStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)?
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
  $AdsBannerAdWidgetStateCopyWith<AdsBannerAdWidgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsBannerAdWidgetStateCopyWith<$Res> {
  factory $AdsBannerAdWidgetStateCopyWith(AdsBannerAdWidgetState value,
          $Res Function(AdsBannerAdWidgetState) then) =
      _$AdsBannerAdWidgetStateCopyWithImpl<$Res, AdsBannerAdWidgetState>;
  @useResult
  $Res call(
      {String adUnitId,
      AdSize size,
      BannerAd? bannerAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class _$AdsBannerAdWidgetStateCopyWithImpl<$Res,
        $Val extends AdsBannerAdWidgetState>
    implements $AdsBannerAdWidgetStateCopyWith<$Res> {
  _$AdsBannerAdWidgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? size = null,
    Object? bannerAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as AdSize,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ApiStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AdsBannerAdWidgetStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String adUnitId,
      AdSize size,
      BannerAd? bannerAd,
      ApiStateStatus loadingStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AdsBannerAdWidgetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adUnitId = null,
    Object? size = null,
    Object? bannerAd = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_$InitialImpl(
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as AdSize,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
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
      required this.size,
      this.bannerAd,
      required this.loadingStatus});

  @override
  final String adUnitId;
  @override
  final AdSize size;
  @override
  final BannerAd? bannerAd;
  @override
  final ApiStateStatus loadingStatus;

  @override
  String toString() {
    return 'AdsBannerAdWidgetState.initial(adUnitId: $adUnitId, size: $size, bannerAd: $bannerAd, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, adUnitId, size, bannerAd, loadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)
        initial,
  }) {
    return initial(adUnitId, size, bannerAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)?
        initial,
  }) {
    return initial?.call(adUnitId, size, bannerAd, loadingStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String adUnitId, AdSize size, BannerAd? bannerAd,
            ApiStateStatus loadingStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(adUnitId, size, bannerAd, loadingStatus);
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

abstract class _Initial implements AdsBannerAdWidgetState {
  const factory _Initial(
      {required final String adUnitId,
      required final AdSize size,
      final BannerAd? bannerAd,
      required final ApiStateStatus loadingStatus}) = _$InitialImpl;

  @override
  String get adUnitId;
  @override
  AdSize get size;
  @override
  BannerAd? get bannerAd;
  @override
  ApiStateStatus get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
