part of 'expense_tracker_report_expenses_screen_cubit.dart';

@freezed
class ExpenseTrackerReportExpensesScreenState
    with _$ExpenseTrackerReportExpensesScreenState {
  const factory ExpenseTrackerReportExpensesScreenState.initial({
    int? year,
    int? month
  }) = _Initial;
}
