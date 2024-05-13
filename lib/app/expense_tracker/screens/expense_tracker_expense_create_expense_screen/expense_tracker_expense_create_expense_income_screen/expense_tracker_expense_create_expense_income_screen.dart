import 'package:basic/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'expense_tracker_expense_create_expense_income_screen_controller.dart';
import 'expense_tracker_expense_create_expense_income_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseCreateExpenseIncomeScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseCreateExpenseIncomeScreenController,
        ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit,
        ExpenseTrackerExpenseCreateExpenseIncomeScreenState> {

  ExpenseTrackerExpenseCreateExpenseIncomeScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit,
          ExpenseTrackerExpenseCreateExpenseIncomeScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/income.png", height: 100, width: 100, fit: BoxFit.fill,),
                SizedBox(height: 10,),
                Text("Your income will be shown here",style: TextStyle(
                  fontSize: Fonts.fontSize14
                ),),
                SizedBox(height: 150,)
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit cubit = ExpenseTrackerExpenseCreateExpenseIncomeScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
