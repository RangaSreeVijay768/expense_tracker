import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_create_expense_transfer_screen_state.dart';

part 'expense_tracker_expense_create_expense_transfer_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseTransferScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseCreateExpenseTransferScreenState> {
  ExpenseTrackerExpenseCreateExpenseTransferScreenCubit(
      {required super.context}) : super(
      initialState: ExpenseTrackerExpenseCreateExpenseTransferScreenState
          .initial());
}
