import 'package:basic/app/expense_tracker/widgets/expense_tracker_create_expense_choose_category_step_widget/expense_tracker_create_expense_choose_category_step_widget.dart';
import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import '../expense_tracker_expense_create_expense_select_category_modal_data.dart';
import 'expense_tracker_expense_create_expense_select_category_modal_content_controller.dart';
import 'expense_tracker_expense_create_expense_select_category_modal_content_cubit.dart';

import 'package:basic/app/core/modals/base_modal_content/base_modal_content_widget.dart';

class ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContent
    extends BaseModalContent<
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentController,
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit,
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentState,
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalData> {

  ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContent(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit,
          ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height/2,
            child: Column(
              children: [
                Expanded(child: ExpenseTrackerCreateExpenseChooseCategoryStepWidget()),
                SizedBox(height: 30,)
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit cubit = ExpenseTrackerExpenseCreateExpenseSelectCategoryModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
