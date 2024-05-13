import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_expenses_screen/expense_tracker_report_expenses_annual_screen/expense_tracker_report_expenses_annual_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_expenses_screen/expense_tracker_report_expenses_daily_screen/expense_tracker_report_expenses_daily_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_expenses_screen/expense_tracker_report_expenses_monthly_screen/expense_tracker_report_expenses_monthly_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_expenses_screen/expense_tracker_report_expenses_period_screen/expense_tracker_report_expenses_period_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_expenses_screen/expense_tracker_report_expenses_weekly_screen/expense_tracker_report_expenses_weekly_screen.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_date_time_utils.dart';
import '../../../../core/widgets/base_stateless_widget.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import '../../expense_tracker_expense_screen/expense_tracker_expense_calendar_screen/expense_tracker_expense_calendar_screen.dart';
import '../../expense_tracker_expense_screen/expense_tracker_expense_daily_screen/expense_tracker_expense_daily_screen.dart';
import '../../expense_tracker_expense_screen/expense_tracker_expense_monthly_screen/expense_tracker_expense_monthly_screen.dart';
import '../../expense_tracker_expense_screen/expense_tracker_expense_note_screen/expense_tracker_expense_note_screen.dart';
import '../../expense_tracker_expense_screen/expense_tracker_expense_total_screen/expense_tracker_expense_total_screen.dart';
import 'expense_tracker_report_expenses_screen_controller.dart';
import 'expense_tracker_report_expenses_screen_cubit.dart';


class ExpenseTrackerReportExpensesScreen
    extends BaseStatelessWidget<
        ExpenseTrackerReportExpensesScreenController,
        ExpenseTrackerReportExpensesScreenCubit,
        ExpenseTrackerReportExpensesScreenState> {

  ExpenseTrackerReportExpensesScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerReportExpensesScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerReportExpensesScreenCubit,
          ExpenseTrackerReportExpensesScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
              // margin: edge_insets_t_24,
              height: MediaQuery.sizeOf(context).height/1.2,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: borderRadius.br_t_20
              ),
              child: Column(
                children: [
                  SizedBox(height: 51,),
                  DefaultTabController(
                      length: 5,
                      initialIndex: 2,
                      child: Column(
                        children: [
                          Container(
                            margin: edge_insets_x_16,
                            padding: edge_insets_x_8,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: borderRadius.br_10,
                                boxShadow: [shadows.bs_grey]
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_outlined, color: AppColors.iconColor,),
                                        SizedBox(width: 8,),
                                        Text(
                                          '${_getMonthName(state.month!)} ${state.year}', style: TextStyle(
                                            fontSize: Fonts.fontSize16,
                                            fontWeight: Fonts.f600
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 35,
                                          child: IconButton(
                                              onPressed: (){
                                                getCubit(context).previousMonth();
                                              },
                                              style: IconButton.styleFrom(
                                                  padding: edge_insets_0
                                              ),
                                              icon: Icon(Icons.chevron_left)
                                          ),
                                        ),
                                        Container(
                                          width: 35,
                                          child: IconButton(
                                              onPressed: (){
                                                getCubit(context).nextMonth();
                                              },
                                              style: IconButton.styleFrom(
                                                  padding: edge_insets_0
                                              ),
                                              icon: Icon(Icons.chevron_right)
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                TabBar(
                                  indicatorPadding: edge_insets_y_8,
                                  indicator: BoxDecoration(
                                      border: borders.bb_3px_bgPrimary),
                                  isScrollable: false,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicatorWeight: 3,
                                  labelColor: AppColors.textHeading,
                                  unselectedLabelColor: AppColors.grey1,
                                  labelPadding: edge_insets_0,
                                  // tabAlignment: TabAlignment.start,
                                  padding: edge_insets_0,
                                  tabs: <Widget>[
                                    Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Daily",
                                          style: TextStyle(
                                              fontWeight: Fonts.f500,
                                              fontSize: Fonts.fontSize14),
                                        )),
                                    Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Weekly",
                                          style: TextStyle(
                                              fontWeight: Fonts.f500,
                                              // color: AppColors.textRed,
                                              fontSize: Fonts.fontSize14),
                                        )),
                                    Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Monthly",
                                          style: TextStyle(
                                              fontWeight: Fonts.f500,
                                              fontSize: Fonts.fontSize14),
                                        )),
                                    Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Annually",
                                          style: TextStyle(
                                              fontWeight: Fonts.f500,
                                              fontSize: Fonts.fontSize14),
                                        )),
                                    Container(
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Period",
                                          style: TextStyle(
                                              fontWeight: Fonts.f500,
                                              fontSize: Fonts.fontSize14),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height/1.58,
                            margin: edge_insets_t_8,
                            child: TabBarView(
                              children: [
                                ExpenseTrackerReportExpensesDailyScreen(),
                                ExpenseTrackerReportExpensesWeeklyScreen(),
                                ExpenseTrackerReportExpensesMonthlyScreen(),
                                ExpenseTrackerReportExpensesAnnualScreen(),
                                ExpenseTrackerReportExpensesPeriodScreen(),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            );
        },
      ),
    );
  }

  @override
  ExpenseTrackerReportExpensesScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerReportExpensesScreenCubit cubit = ExpenseTrackerReportExpensesScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }


}
