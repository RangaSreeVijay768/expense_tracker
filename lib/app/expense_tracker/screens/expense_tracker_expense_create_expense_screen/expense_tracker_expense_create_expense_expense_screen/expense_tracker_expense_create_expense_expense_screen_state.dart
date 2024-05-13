part of 'expense_tracker_expense_create_expense_expense_screen_cubit.dart';

@freezed
class ExpenseTrackerExpenseCreateExpenseExpenseScreenState
    with _$ExpenseTrackerExpenseCreateExpenseExpenseScreenState {
  const factory ExpenseTrackerExpenseCreateExpenseExpenseScreenState.initial({
    String? file,
    @Default(BooleanStatus.initial) BooleanStatus filePickerStatus,
  }) = _Initial;
}
