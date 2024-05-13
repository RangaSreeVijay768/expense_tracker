import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_create_expense_screen/expense_tracker_expense_create_expense_expense_screen/expense_tracker_expense_create_expense_expense_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_create_expense_screen/expense_tracker_expense_create_expense_income_screen/expense_tracker_expense_create_expense_income_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_create_expense_screen/expense_tracker_expense_create_expense_transfer_screen/expense_tracker_expense_create_expense_transfer_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_screen.dart';
import 'package:basic/app/expense_tracker/widgets/expense_tracker_home_drawer_widget/expense_tracker_home_drawer_widget.dart';
import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../expense_tracker_expense_screen/expense_tracker_expense_calendar_screen/expense_tracker_expense_calendar_screen.dart';
import '../expense_tracker_expense_screen/expense_tracker_expense_daily_screen/expense_tracker_expense_daily_screen.dart';
import '../expense_tracker_expense_screen/expense_tracker_expense_monthly_screen/expense_tracker_expense_monthly_screen.dart';
import '../expense_tracker_expense_screen/expense_tracker_expense_note_screen/expense_tracker_expense_note_screen.dart';
import '../expense_tracker_expense_screen/expense_tracker_expense_total_screen/expense_tracker_expense_total_screen.dart';
import 'expense_tracker_expense_create_expense_screen_controller.dart';
import 'expense_tracker_expense_create_expense_screen_cubit.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseCreateExpenseScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseCreateExpenseScreenController,
        ExpenseTrackerExpenseCreateExpenseScreenCubit,
        ExpenseTrackerExpenseCreateExpenseScreenState> {

  ExpenseTrackerExpenseCreateExpenseScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseCreateExpenseScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseScreenCubit,
          ExpenseTrackerExpenseCreateExpenseScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            backgroundColor: AppColors.bgPrimary,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: edge_insets_x_16,
                    margin: edge_insets_t_24,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: AppColors.white,
                                padding: edge_insets_0,
                                shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.chevron_left)
                        ),
                        Text("Expense", style: TextStyle(
                            color: AppColors.white,
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize20
                        ),),
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: AppColors.white,
                                padding: edge_insets_0,
                                shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseTrackerReportScreen()));
                            },
                            icon: Image.asset("images/starMenu.png", width: 20, height: 20, color: AppColors.textHeading,)
                        )
                      ],
                    ),
                  ),
                  DefaultTabController(
                      length: 3,
                      initialIndex: 1,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            margin: edge_insets_t_24,
                            padding: edge_insets_t_48,
                            height: MediaQuery.sizeOf(context).height/1.1,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: borderRadius.br_t_20
                            ),
                            child: TabBarView(
                              children: [
                                ExpenseTrackerExpenseCreateExpenseIncomeScreen(),
                                ExpenseTrackerExpenseCreateExpenseExpenseScreen(),
                                ExpenseTrackerExpenseCreateExpenseTransferScreen(),
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_x_16,
                            padding: edge_insets_x_8,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: borderRadius.br_10,
                                boxShadow: [shadows.bs_primary]
                            ),
                            child: TabBar(
                              indicatorPadding: edge_insets_y_8,
                              indicator: BoxDecoration(
                                  color: AppColors.bgPrimary,
                                borderRadius: borderRadius.br_10
                              ),
                              isScrollable: false,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorWeight: 3,
                              labelStyle: TextStyle(
                                color: AppColors.white,
                                fontSize: Fonts.fontSize14,
                                fontWeight: Fonts.f600
                              ),
                              unselectedLabelStyle: TextStyle(
                                color: AppColors.textNormal,
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize14
                              ),
                              labelPadding: edge_insets_y_4,
                              // tabAlignment: TabAlignment.start,
                              padding: edge_insets_0,
                              tabs: <Widget>[
                                Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "Income",
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14),
                                    )),
                                Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "Expense",
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          // color: AppColors.textRed,
                                          fontSize: Fonts.fontSize14),
                                    )),
                                Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "Transfer",
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseCreateExpenseScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseScreenCubit cubit = ExpenseTrackerExpenseCreateExpenseScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
