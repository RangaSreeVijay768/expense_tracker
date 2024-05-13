import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../themes/fonts.dart';
import 'expense_tracker_report_income_screen_controller.dart';
import 'expense_tracker_report_income_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerReportIncomeScreen
    extends BaseStatelessWidget<
        ExpenseTrackerReportIncomeScreenController,
        ExpenseTrackerReportIncomeScreenCubit,
        ExpenseTrackerReportIncomeScreenState> {

  ExpenseTrackerReportIncomeScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerReportIncomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerReportIncomeScreenCubit,
          ExpenseTrackerReportIncomeScreenState>(
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
                Text("All income reports will be displayed here",style: TextStyle(
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
  ExpenseTrackerReportIncomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerReportIncomeScreenCubit cubit = ExpenseTrackerReportIncomeScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
