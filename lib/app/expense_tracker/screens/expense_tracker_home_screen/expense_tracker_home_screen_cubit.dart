import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../core/blocs/base_cubit.dart';

part 'expense_tracker_home_screen_state.dart';

part 'expense_tracker_home_screen_cubit.freezed.dart';

class ExpenseTrackerHomeScreenCubit
    extends BaseCubit<ExpenseTrackerHomeScreenState> {
  ExpenseTrackerHomeScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerHomeScreenState.initial());
}
