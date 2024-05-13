import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:basic/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_create_expense_select_account_modal_content_state.dart';

part 'expense_tracker_expense_create_expense_select_account_modal_content_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit
    extends BaseCubit<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentState> {
  ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentState
          .initial(selectedIndex: 0));

  selectWidget(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
