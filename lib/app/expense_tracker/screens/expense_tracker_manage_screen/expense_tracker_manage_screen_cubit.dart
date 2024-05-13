import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_manage_screen_state.dart';

part 'expense_tracker_manage_screen_cubit.freezed.dart';

class ExpenseTrackerManageScreenCubit
    extends BaseCubit<ExpenseTrackerManageScreenState> {
  ExpenseTrackerManageScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerManageScreenState.initial());
}
