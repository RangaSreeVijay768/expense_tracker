import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:basic/app/core/database/boolean_status.dart';
import 'package:basic/app/core/modals/base_modal/base_modal_cubit.dart';

part 'expense_tracker_expense_create_expense_select_account_modal_state.dart';

part 'expense_tracker_expense_create_expense_select_account_modal_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit
    extends BaseModalCubit<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalState> {
  ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerExpenseCreateExpenseSelectAccountModalState
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
