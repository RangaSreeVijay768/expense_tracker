import 'package:basic/app/expense_tracker/widgets/expense_tracker_expense_calendar_widget/expense_tracker_expense_calendar_widget.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import 'expense_tracker_expense_calendar_screen_controller.dart';
import 'expense_tracker_expense_calendar_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseCalendarScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseCalendarScreenController,
        ExpenseTrackerExpenseCalendarScreenCubit,
        ExpenseTrackerExpenseCalendarScreenState> {

  ExpenseTrackerExpenseCalendarScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseCalendarScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCalendarScreenCubit,
          ExpenseTrackerExpenseCalendarScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            child: Column(
              children: [
                SizedBox(height: 4,),
                Container(
                  margin: edge_insets_x_16,
                  padding: edge_insets_y_16,
                  decoration: BoxDecoration(
                      border: borders.bb_1px_grey1
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: edge_insets_l_16,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Column(
                          children: [
                            Text("0.00",style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize24,
                                color: AppColors.bgPrimary2
                            ),),
                            Text("Income", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Column(
                          children: [
                            Text("0.00",style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize24,
                                color: AppColors.textRed
                            ),),
                            Text("Expenses", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        padding: edge_insets_r_16,
                        alignment: Alignment.centerRight,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Column(
                          children: [
                            Text("0.00",style: TextStyle(
                                fontWeight: Fonts.f700,
                                fontSize: Fonts.fontSize24,
                                color: AppColors.textHeading
                            ),),
                            Text("Total", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_16,
                  padding: edge_insets_x_16_y_4,
                  decoration: BoxDecoration(
                    color: AppColors.waterPrimary,
                    borderRadius: borderRadius.br_5
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mon", style: TextStyle(
                        fontSize: Fonts.fontSize12,
                        fontWeight: Fonts.f500,
                        color: AppColors.white
                      ),),
                      Text("Tue", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),),
                      Text("Wed", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),),
                      Text("Thu", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),),
                      Text("Fri", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),),
                      Text("Sat", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),),
                      Text("Sun", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          fontWeight: Fonts.f500,
                          color: AppColors.white

                      ),),
                    ],
                  ),
                ),

                Container(
                  child: Expanded(
                    child: ExpenseTrackerExpenseCalendarWidget(),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseCalendarScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCalendarScreenCubit cubit = ExpenseTrackerExpenseCalendarScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
