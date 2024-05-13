import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:basic/app/core/database/boolean_status.dart';
import 'package:basic/app/core/modals/base_modal/base_modal_cubit.dart';

part 'expense_tracker_expense_create_expense_select_category_modal_state.dart';

part 'expense_tracker_expense_create_expense_select_category_modal_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseSelectCategoryModalCubit
    extends BaseModalCubit<
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalState> {
  ExpenseTrackerExpenseCreateExpenseSelectCategoryModalCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerExpenseCreateExpenseSelectCategoryModalState
          .initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    emitState(state.copyWith(modalStatus: BooleanStatus.active));
  }

  @override
  void openModalManual() {
    emitState(state.copyWith(modalStatus: BooleanStatus.pending));
  }

}
