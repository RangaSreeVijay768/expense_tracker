import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_create_expense_screen_state.dart';

part 'expense_tracker_expense_create_expense_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseCreateExpenseScreenState> {
  ExpenseTrackerExpenseCreateExpenseScreenCubit({required super.context})
      : super(
      initialState: ExpenseTrackerExpenseCreateExpenseScreenState.initial());
}
