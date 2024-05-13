import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_total_screen_state.dart';

part 'expense_tracker_expense_total_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseTotalScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseTotalScreenState> {
  ExpenseTrackerExpenseTotalScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerExpenseTotalScreenState.initial());
}
