import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../core/blocs/base_cubit.dart';

part 'ads_native_ad_cubit.freezed.dart';

part 'ads_native_ad_state.dart';

class AdsNativeAdCubit extends BaseCubit<AdsNativeAdState> {
  AdsNativeAdCubit({required super.context, required TemplateType templateType})
      : super(
      initialState: AdsNativeAdState.initial(
          adUnitId
              : 'ca-app-pub-3940256099942544/3986624511',
          templateType: templateType,
          loadingStatus: ApiStateStatus.initial)) {
    this.loadNativeAd();
  }

  loadNativeAd() {
    NativeAd nativeAd = NativeAd(
        adUnitId: state.adUnitId,
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            emit(state.copyWith(loadingStatus: ApiStateStatus.loaded));
          },
          onAdFailedToLoad: (ad, error) {
            // Dispose the ad here to free resources.
            ad.dispose();
          },
        ),
        request: const AdRequest(),
        // Styling
        nativeTemplateStyle: NativeTemplateStyle(
          // Required: Choose a template.
            templateType: state.templateType,
            // Optional: Customize the ad's style.
            mainBackgroundColor: Colors.purple,
            cornerRadius: 10.0,
            callToActionTextStyle: NativeTemplateTextStyle(
                textColor: Colors.cyan,
                backgroundColor: Colors.red,
                style: NativeTemplateFontStyle.monospace,
                size: 16.0),
            primaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.red,
                backgroundColor: Colors.cyan,
                style: NativeTemplateFontStyle.italic,
                size: 16.0),
            secondaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.green,
                backgroundColor: Colors.black,
                style: NativeTemplateFontStyle.bold,
                size: 16.0),
            tertiaryTextStyle: NativeTemplateTextStyle(
                textColor: Colors.brown,
                backgroundColor: Colors.amber,
                style: NativeTemplateFontStyle.normal,
                size: 16.0)))
      ..load();
    emit(state.copyWith(
        nativeAd: nativeAd, loadingStatus: ApiStateStatus.loading));
  }
}
