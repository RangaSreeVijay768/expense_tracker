import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controllers/base_controller.dart';

abstract class BaseStatelessWidget<T extends BaseController, C extends BlocBase,
    S> extends StatelessWidget {
  final T? controller;

  final Function(S)? onStateChanged;

  const BaseStatelessWidget({this.controller, super.key, this.onStateChanged});

  C createCubitAndAssignToController(BuildContext context);


  C getCubit(BuildContext context) {
    return BlocProvider.of<C>(context);
  }

  initializeController(BuildContext context) {
    this.controller?.childContext = context;
  }
}
