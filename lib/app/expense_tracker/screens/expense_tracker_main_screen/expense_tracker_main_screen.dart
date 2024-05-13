import 'package:basic/app/expense_tracker/screens/expense_tracker_account_screen/expense_tracker_account_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_home_screen/expense_tracker_home_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_manage_screen/expense_tracker_manage_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_orders_screen/expense_tracker_orders_screen.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/fonts.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import 'expense_tracker_main_screen_controller.dart';
import 'expense_tracker_main_screen_cubit.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerMainScreen
    extends BaseStatelessWidget<
        ExpenseTrackerMainScreenController,
        ExpenseTrackerMainScreenCubit,
        ExpenseTrackerMainScreenState> {

  ExpenseTrackerMainScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key) {
    tabWidgets = {
      'HOME': ExpenseTrackerHomeScreen(),
      'ORDERS': ExpenseTrackerOrdersScreen(),
      'EXPENSE': ExpenseTrackerExpenseScreen(),
      'MANAGE': ExpenseTrackerManageScreen(),
      'ACCOUNT': ExpenseTrackerAccountScreen(),
    };
  }
  late final Map<String, Widget> tabWidgets;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerMainScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerMainScreenCubit,
          ExpenseTrackerMainScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: tabWidgets[state.selectedWidgetName],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: AppColors.white, boxShadow: [shadows.bs_primary]),
              alignment: Alignment.center,
              height: 80,
              padding: edge_insets_x_7,
              child: Row(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          padding: edge_insets_0
                      ),
                      onPressed: () {
                        getCubit(context).selectWidget('HOME');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width/5.2,
                            decoration: BoxDecoration(
                              border: state.selectedWidgetName == 'HOME'
                                  ? borders.bt_6px_bgPrimary
                                  : borders.bt_6px_transparent,
                              borderRadius: borderRadius.br_5,
                            ),
                          ),
                          Container(
                            padding: edge_insets_13,
                            child: Icon(
                              Icons.home,
                              color: state.selectedWidgetName == 'HOME'
                                  ? AppColors.bgPrimary
                                  : AppColors.grey4,
                            ),
                          ),
                          Text("Home", style: TextStyle(
                              color: state.selectedWidgetName == 'HOME'
                                  ? AppColors.bgPrimary : AppColors.grey1,
                              fontSize: Fonts.fontSize12,
                              fontWeight: state.selectedWidgetName == 'HOME'
                                  ? Fonts.f700 : Fonts.f500
                          ),)
                        ],
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          padding: edge_insets_0
                      ),
                      onPressed: () {
                        getCubit(context).selectWidget('ORDERS');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width/5.2,
                            decoration: BoxDecoration(
                              border: state.selectedWidgetName == 'ORDERS'
                                  ? borders.bt_6px_bgPrimary
                                  : borders.bt_6px_transparent,
                              borderRadius: borderRadius.br_5,
                            ),
                          ),
                          Container(
                            padding: edge_insets_13,
                            child: Icon(
                              Icons.event_note_outlined,
                              color: state.selectedWidgetName == 'ORDERS'
                                  ? AppColors.bgPrimary
                                  : AppColors.grey4,
                            ),
                          ),
                          Text("Orders", style: TextStyle(
                              color: state.selectedWidgetName == 'ORDERS'
                                  ? AppColors.bgPrimary : AppColors.grey1,
                              fontSize: Fonts.fontSize12,
                              fontWeight: state.selectedWidgetName == 'ORDERS'
                                  ? Fonts.f700 : Fonts.f500
                          ),)
                        ],
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          padding: edge_insets_0
                      ),
                      onPressed: () {
                        getCubit(context).selectWidget('EXPENSE');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width/5.2,
                            decoration: BoxDecoration(
                              border: state.selectedWidgetName == 'EXPENSE'
                                  ? borders.bt_6px_bgPrimary
                                  : borders.bt_6px_transparent,
                              borderRadius: borderRadius.br_5,
                            ),
                          ),
                          Container(
                            padding: edge_insets_13,
                            child: Icon(
                              Icons.dashboard_outlined,
                              color: state.selectedWidgetName == 'EXPENSE'
                                  ? AppColors.bgPrimary
                                  : AppColors.grey4,
                            ),
                          ),
                          Text("Expense", style: TextStyle(
                              color: state.selectedWidgetName == 'EXPENSE'
                                  ? AppColors.bgPrimary : AppColors.grey1,
                              fontSize: Fonts.fontSize12,
                              fontWeight: state.selectedWidgetName == 'EXPENSE'
                                  ? Fonts.f700 : Fonts.f500
                          ),)
                        ],
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          padding: edge_insets_0
                      ),
                      onPressed: () {
                        getCubit(context).selectWidget('MANAGE');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width/5.2,
                            decoration: BoxDecoration(
                              border: state.selectedWidgetName == 'MANAGE'
                                  ? borders.bt_6px_bgPrimary
                                  : borders.bt_6px_transparent,
                              borderRadius: borderRadius.br_5,
                            ),
                          ),
                          Container(
                            padding: edge_insets_13,
                            child: Icon(
                              Icons.storefront_outlined,
                              color: state.selectedWidgetName == 'MANAGE'
                                  ? AppColors.bgPrimary
                                  : AppColors.grey4,
                            ),
                          ),
                          Text("Manage", style: TextStyle(
                              color: state.selectedWidgetName == 'MANAGE'
                                  ? AppColors.bgPrimary : AppColors.grey1,
                              fontSize: Fonts.fontSize12,
                              fontWeight: state.selectedWidgetName == 'MANAGE'
                                  ? Fonts.f700 : Fonts.f500
                          ),)
                        ],
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          padding: edge_insets_0
                      ),
                      onPressed: () {
                        getCubit(context).selectWidget('ACCOUNT');
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width/5.2,
                            decoration: BoxDecoration(
                              border: state.selectedWidgetName == 'ACCOUNT'
                                  ? borders.bt_6px_bgPrimary
                                  : borders.bt_6px_transparent,
                              borderRadius: borderRadius.br_5,
                            ),
                          ),
                          Container(
                            padding: edge_insets_13,
                            child: Icon(
                              Icons.person,
                              color: state.selectedWidgetName == 'ACCOUNT'
                                  ? AppColors.bgPrimary
                                  : AppColors.grey4,
                            ),
                          ),
                          Text("Account", style: TextStyle(
                              color: state.selectedWidgetName == 'ACCOUNT'
                                  ? AppColors.bgPrimary : AppColors.grey1,
                              fontSize: Fonts.fontSize12,
                              fontWeight: state.selectedWidgetName == 'ACCOUNT'
                                  ? Fonts.f700 : Fonts.f500
                          ),)
                        ],
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerMainScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerMainScreenCubit cubit = ExpenseTrackerMainScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
