import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../themes/fonts.dart';
import 'expense_tracker_report_expenses_weekly_screen_controller.dart';
import 'expense_tracker_report_expenses_weekly_screen_cubit.dart';

import 'package:basic/app/core/widgets/base_stateless_widget.dart';

class ExpenseTrackerReportExpensesWeeklyScreen
    extends BaseStatelessWidget<
        ExpenseTrackerReportExpensesWeeklyScreenController,
        ExpenseTrackerReportExpensesWeeklyScreenCubit,
        ExpenseTrackerReportExpensesWeeklyScreenState> {

  ExpenseTrackerReportExpensesWeeklyScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerReportExpensesWeeklyScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerReportExpensesWeeklyScreenCubit,
          ExpenseTrackerReportExpensesWeeklyScreenState>(
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
                Image.asset("images/construction.png", height: 100, width: 100, fit: BoxFit.fill,),
                SizedBox(height: 10,),
                Text("Your weekly reports will be displayed here",style: TextStyle(
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
  ExpenseTrackerReportExpensesWeeklyScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerReportExpensesWeeklyScreenCubit cubit = ExpenseTrackerReportExpensesWeeklyScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
