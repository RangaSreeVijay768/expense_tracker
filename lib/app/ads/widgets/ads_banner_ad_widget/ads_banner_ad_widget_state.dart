part of 'ads_banner_ad_widget_cubit.dart';

enum ApiStateStatus { initial, loaded, loading, created, error, completed }

@freezed
class AdsBannerAdWidgetState with _$AdsBannerAdWidgetState {
  const factory AdsBannerAdWidgetState.initial({
    required String adUnitId,
    required AdSize size,
    BannerAd? bannerAd,
    required ApiStateStatus loadingStatus,
  }) = _Initial;
}
