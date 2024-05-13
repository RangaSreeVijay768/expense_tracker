import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:basic/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_create_expense_select_category_modal_content_state.dart';

part 'expense_tracker_expense_create_expense_select_category_modal_content_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit
    extends BaseCubit<
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentState> {
  ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentState
          .initial());
}
