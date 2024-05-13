import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_create_expense_choose_category_sub_category_step_state.dart';

part 'expense_tracker_create_expense_choose_category_sub_category_step_cubit.freezed.dart';

class ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit
    extends BaseCubit<
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState> {
  ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState
          .initial());

  selectWidget(int value){
    emit(state.copyWith(selectedIndex: value));
  }
}
