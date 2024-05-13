import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/base_controller.dart';
import '../../models/modal_data.dart';
import '../../widgets/base_stateless_widget.dart';

abstract class BaseModalContent<L extends BaseController, C extends BlocBase, S,
    M> extends BaseStatelessWidget<L, C, S> {


  closeModal(BuildContext context, ModalData<M> modalData) {
    Navigator.pop(context, modalData);
  }

  const BaseModalContent({super.key, super.controller,super.onStateChanged});
}
