
import 'package:basic/app/core/database/boolean_status.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/blocs/base_cubit.dart';
import 'package:file_picker/file_picker.dart';

import 'package:get_it/get_it.dart';

part 'expense_tracker_expense_create_expense_expense_screen_state.dart';

part 'expense_tracker_expense_create_expense_expense_screen_cubit.freezed.dart';

class ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit
    extends BaseCubit<ExpenseTrackerExpenseCreateExpenseExpenseScreenState> {
  ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit({required super.context})
      : super(initialState: ExpenseTrackerExpenseCreateExpenseExpenseScreenState
      .initial());

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      emit(state.copyWith(file: result.files.single.path));
      emit(state.copyWith(filePickerStatus: BooleanStatus.picked));
    } else {
      emit(state.copyWith(filePickerStatus: BooleanStatus.error));
    }
  }

}
