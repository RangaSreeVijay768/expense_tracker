import 'package:basic/app/expense_tracker/widgets/expense_tracker_create_expense_choose_category_step_widget/expense_tracker_create_expense_choose_category_category_step/expense_tracker_create_expense_choose_category_category_step.dart';
import 'package:basic/app/expense_tracker/widgets/expense_tracker_create_expense_choose_category_step_widget/expense_tracker_create_expense_choose_category_sub_category_step/expense_tracker_create_expense_choose_category_sub_category_step.dart';
import 'package:basic/app/expense_tracker/widgets/expense_tracker_create_expense_choose_category_step_widget/expense_tracker_create_expense_choose_category_sub_category_step/expense_tracker_create_expense_choose_category_sub_category_step_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:go_router/go_router.dart';

import 'expense_tracker_create_expense_choose_category_category_step/expense_tracker_create_expense_choose_category_category_step_controller.dart';
import 'expense_tracker_create_expense_choose_category_step_widget_controller.dart';
import 'expense_tracker_create_expense_choose_category_step_widget_cubit.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerCreateExpenseChooseCategoryStepWidget
    extends BaseStatelessWidget<
        ExpenseTrackerCreateExpenseChooseCategoryStepWidgetController,
        ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit,
        ExpenseTrackerCreateExpenseChooseCategoryStepWidgetState> {

  ExpenseTrackerCreateExpenseChooseCategoryStepWidget(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit,
          ExpenseTrackerCreateExpenseChooseCategoryStepWidgetState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return DefaultWizardController(
              stepControllers: [
                WizardStepController(
                    step: ExpenseTrackerCreateExpenseChooseCategoryCategoryStepController()),
                WizardStepController(
                    step: ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepController()),
              ],
              child: Column(
                children: [
                  Expanded(
                    child: Wizard(stepBuilder: (context, state) {
                      if (state is ExpenseTrackerCreateExpenseChooseCategoryCategoryStepController) {
                        return ExpenseTrackerCreateExpenseChooseCategoryCategoryStep(
                          onStepFinished: (state) {
                            getCubit(context).updateState(step1State: state);
                            WizardController.of(context).goNext();
                          },
                        );
                      }
                      if (state is ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepController) {
                        return ExpenseTrackerCreateExpenseChooseCategorySubCategoryStep(
                          categories: getCubit(context).state.step1State?.containerData ?? [],
                          selectedIndex: getCubit(context).state.step1State?.selectedIndex ?? 0,
                          onStepFinished: (state) {
                            getCubit(context).updateState(
                                step2State: state,
                                step1State: getCubit(context).state.step1State);
                            WizardController.of(context).goNext();
                          },
                        );
                      }
                      return Container();
                    }),
                  ),
                ],
              ));
        },
      ),
    );
  }

  @override
  ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit cubit = ExpenseTrackerCreateExpenseChooseCategoryStepWidgetCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
