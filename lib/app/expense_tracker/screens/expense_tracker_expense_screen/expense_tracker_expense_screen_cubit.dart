import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_screen_state.dart';

part 'expense_tracker_expense_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseScreenState> {
  ExpenseTrackerExpenseScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerExpenseScreenState.initial(year: DateTime.now().year, month: DateTime.now().month));

  void nextMonth() {
    if (state.month == 12) {
      emit(state.copyWith(year: state.year! + 1, month: 1));
    } else {
      emit(state.copyWith(month: state.month! + 1));
    }
  }

  void previousMonth() {
    if (state.month == 1) {
      emit(state.copyWith(year: state.year! - 1, month: 12));
    } else {
      emit(state.copyWith(month: state.month! - 1));
    }
  }

}
