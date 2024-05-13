import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:basic/app/core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_home_drawer_widget_state.dart';

part 'expense_tracker_home_drawer_widget_cubit.freezed.dart';

class ExpenseTrackerHomeDrawerWidgetCubit
    extends BaseCubit<ExpenseTrackerHomeDrawerWidgetState> {
  ExpenseTrackerHomeDrawerWidgetCubit({required super.context})
      : super(initialState: ExpenseTrackerHomeDrawerWidgetState.initial());
}
