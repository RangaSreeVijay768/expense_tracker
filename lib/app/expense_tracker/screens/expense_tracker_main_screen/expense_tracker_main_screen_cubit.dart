import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_main_screen_state.dart';

part 'expense_tracker_main_screen_cubit.freezed.dart';

class ExpenseTrackerMainScreenCubit
    extends BaseCubit<ExpenseTrackerMainScreenState> {
  ExpenseTrackerMainScreenCubit(
      {required super.context, String? selectedWidget})
      : super(
            initialState: ExpenseTrackerMainScreenState.initial(
          selectedWidgetName: selectedWidget ?? 'EXPENSE',
        ));

  selectWidget(String value) {
    emit(state.copyWith(selectedWidgetName: value));
  }
}
