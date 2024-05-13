import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'ads_banner_ad_widget_controller.dart';
import 'ads_banner_ad_widget_cubit.dart';

class AdsBannerAdWidget extends BaseStatelessWidget<AdsBannerAdWidgetController,
    AdsBannerAdWidgetCubit, AdsBannerAdWidgetState> {
  AdsBannerAdWidget({Key? key, super.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdsBannerAdWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<AdsBannerAdWidgetCubit, AdsBannerAdWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.bannerAd != null
              ? Container(
                  alignment: Alignment.center,
                  width: state.bannerAd!.size.width.toDouble(),
                  height: state.bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: state.bannerAd!),
                )
              : Container(
              height: 150,
            child: Center(
              child: Text("Ads will be displayed here"),
            ),
          );
        },
      ),
    );
  }

  @override
  AdsBannerAdWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    AdsBannerAdWidgetCubit cubit = AdsBannerAdWidgetCubit();
    controller?.cubit = cubit;
    return cubit;
  }
}
