part of 'ads_native_ad_cubit.dart';

enum ApiStateStatus { initial, loaded, loading, created, error, completed }

@freezed
class AdsNativeAdState with _$AdsNativeAdState {
  const factory AdsNativeAdState.initial({
    required String adUnitId,
    required TemplateType templateType,
    NativeAd? nativeAd,
    required ApiStateStatus loadingStatus,
  }) = _Initial;
}
