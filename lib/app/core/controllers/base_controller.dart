import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logger/log.dart';

abstract class BaseController<T extends BlocBase> {
  T? cubit;
  BuildContext? childContext;

  BaseController();

  T getChildCubit() {
    if (childContext == null) {
      throw AssertionError('child context cannot be null');
    }
    return BlocProvider.of<T>(childContext!);
  }

  String getControllerId() {
    return this.runtimeType.toString();
  }

  // bool isChildCubitAvailable()
}
