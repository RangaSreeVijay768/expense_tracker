import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:basic/app/core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_create_expense_choose_category_category_step_state.dart';

part 'expense_tracker_create_expense_choose_category_category_step_cubit.freezed.dart';

class ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit
    extends BaseCubit<
        ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState> {
  ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit(
      {required super.context, required List<Map<String, dynamic>> containerData}) : super(
      initialState: ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState
          .initial(containerData: containerData));

  selectWidget(int value){
    emit(state.copyWith(selectedIndex: value));
  }
}
