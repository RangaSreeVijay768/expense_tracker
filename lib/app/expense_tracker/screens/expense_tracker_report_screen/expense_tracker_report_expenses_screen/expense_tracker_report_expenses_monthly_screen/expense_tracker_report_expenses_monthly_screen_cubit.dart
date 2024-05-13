import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:basic/app/core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_report_expenses_monthly_screen_state.dart';

part 'expense_tracker_report_expenses_monthly_screen_cubit.freezed.dart';

class ExpenseTrackerReportExpensesMonthlyScreenCubit
    extends BaseCubit<ExpenseTrackerReportExpensesMonthlyScreenState> {
  ExpenseTrackerReportExpensesMonthlyScreenCubit({required super.context})
      : super(
      initialState: ExpenseTrackerReportExpensesMonthlyScreenState.initial());
}
