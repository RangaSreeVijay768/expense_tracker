part of 'expense_tracker_create_expense_choose_category_category_step_cubit.dart';

@freezed
class ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState
    with _$ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState {
  const factory ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState.initial({
    int? selectedIndex,
    List<Map<String, dynamic>>? containerData
  }) = _Initial;
}
