import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_calendar_widget_state.dart';

part 'expense_tracker_expense_calendar_widget_cubit.freezed.dart';

class ExpenseTrackerExpenseCalendarWidgetCubit
    extends BaseCubit<ExpenseTrackerExpenseCalendarWidgetState> {
  ExpenseTrackerExpenseCalendarWidgetCubit({required super.context})
      : super(initialState: ExpenseTrackerExpenseCalendarWidgetState.initial());
}
