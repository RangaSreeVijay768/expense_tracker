import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_monthly_screen_state.dart';

part 'expense_tracker_expense_monthly_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseMonthlyScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseMonthlyScreenState> {
  ExpenseTrackerExpenseMonthlyScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerExpenseMonthlyScreenState.initial(isExpanded: true));

  expand(bool value){
    emit(state.copyWith(isExpanded: value));
  }
}
