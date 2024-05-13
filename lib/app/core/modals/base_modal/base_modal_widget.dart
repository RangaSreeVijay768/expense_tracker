import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/base_modal_controller.dart';
import '../../models/modal_data.dart';
import '../../widgets/base_stateless_widget.dart';
import 'base_modal_cubit.dart';

abstract class BaseModalWidget<T extends BaseModalController,
    B extends BaseModalCubit, S, M> extends BaseStatelessWidget<T, B, S> {
  BaseModalWidget(
      {Key? key, this.onModalClosed, super.controller, super.onStateChanged})
      : super(key: key);

  Function(ModalData<M>)? onModalClosed;

  Future<T?> openModal<T>(
      {required BuildContext context, required BlocBase cubit}) {
    getCubit(context).openModal();
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return BlocProvider.value(
            value: cubit,
            child: getModalContentWidget(context: context),
          );
        }).then((value) {
      getCubit(context).closeModal();
      if (this.onModalClosed != null) {
        this.onModalClosed!(value);
      }
      return null;
    });
  }

  Widget getModalContentWidget({required BuildContext context});
}
