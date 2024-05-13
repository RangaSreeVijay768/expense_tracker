import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

import 'expense_tracker_create_expense_choose_category_category_step/expense_tracker_create_expense_choose_category_category_step_cubit.dart';
import 'expense_tracker_create_expense_choose_category_sub_category_step/expense_tracker_create_expense_choose_category_sub_category_step_cubit.dart';

part 'expense_tracker_create_expense_choose_category_step_widget_state.dart';

part 'expense_tracker_create_expense_choose_category_step_widget_cubit.freezed.dart';

class ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit
    extends BaseCubit<
        ExpenseTrackerCreateExpenseChooseCategoryStepWidgetState> {
  ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerCreateExpenseChooseCategoryStepWidgetState
          .initial());

  updateState(
      {ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState? step1State,
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState? step2State,
      }) {
    emit(state.copyWith(
        step1State: step1State,
        step2State: step2State));
  }
}
