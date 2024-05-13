part of 'expense_tracker_main_screen_cubit.dart';

@freezed
class ExpenseTrackerMainScreenState with _$ExpenseTrackerMainScreenState {
  const factory ExpenseTrackerMainScreenState.initial({
    @Default("HOME") String selectedWidgetName,
}) = _Initial;
}
