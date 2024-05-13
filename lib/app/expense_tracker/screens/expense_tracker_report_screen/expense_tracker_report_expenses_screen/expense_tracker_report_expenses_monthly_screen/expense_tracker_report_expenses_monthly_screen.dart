import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/edge_insets.dart';
import 'package:basic/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'expense_tracker_report_expenses_monthly_screen_controller.dart';
import 'expense_tracker_report_expenses_monthly_screen_cubit.dart';

import 'package:basic/app/core/widgets/base_stateless_widget.dart';
import 'package:pie_chart/pie_chart.dart';

class ExpenseTrackerReportExpensesMonthlyScreen
    extends BaseStatelessWidget<
        ExpenseTrackerReportExpensesMonthlyScreenController,
        ExpenseTrackerReportExpensesMonthlyScreenCubit,
        ExpenseTrackerReportExpensesMonthlyScreenState> {

  ExpenseTrackerReportExpensesMonthlyScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);
  Map<String, double> dataMap = {
    "Loan Investment                  49%": 49,
    "House Expenses                  24%": 24,
    "Fooding                                 27%": 27,
  };



  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerReportExpensesMonthlyScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerReportExpensesMonthlyScreenCubit,
          ExpenseTrackerReportExpensesMonthlyScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            margin: edge_insets_t_24,
            child: Column(
              children: [
                PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 800),
                  chartLegendSpacing: 32,
                  chartRadius: 150,
                  colorList: [
                    AppColors.skyBlue,
                    AppColors.violet,
                    AppColors.yellow
                  ],
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 32,
                  // centerText: "Total \nTransaction \n\n 14",
                  centerWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total \nTransaction",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize10,
                        color: AppColors.textHeading
                      ),),
                      SizedBox(height: 20,),
                      Text("14", style: TextStyle(
                        fontSize: Fonts.fontSize14,
                        color: AppColors.grey1
                      ),)
                    ],
                  ),
                  centerTextStyle: TextStyle(
                    fontSize: Fonts.fontSize14,
                    fontWeight: Fonts.f500,
                    color: AppColors.textHeading
                  ),
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.bottom,
                    showLegends: true,
                    legendShape: BoxShape.circle,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: false,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
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
  ExpenseTrackerReportExpensesMonthlyScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerReportExpensesMonthlyScreenCubit cubit = ExpenseTrackerReportExpensesMonthlyScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
