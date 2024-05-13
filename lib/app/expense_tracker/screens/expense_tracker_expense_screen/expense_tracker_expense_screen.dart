import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_create_expense_screen/expense_tracker_expense_create_expense_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_calendar_screen/expense_tracker_expense_calendar_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_daily_screen/expense_tracker_expense_daily_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_monthly_screen/expense_tracker_expense_monthly_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_note_screen/expense_tracker_expense_note_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_expense_screen/expense_tracker_expense_total_screen/expense_tracker_expense_total_screen.dart';
import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_screen.dart';
import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_date_time_utils.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../widgets/expense_tracker_home_drawer_widget/expense_tracker_home_drawer_widget.dart';
import 'expense_tracker_expense_screen_controller.dart';
import 'expense_tracker_expense_screen_cubit.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseScreenController,
        ExpenseTrackerExpenseScreenCubit,
        ExpenseTrackerExpenseScreenState> {

  ExpenseTrackerExpenseScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    if (_scaffoldKey.currentState != null) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseScreenCubit,
          ExpenseTrackerExpenseScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            key: _scaffoldKey,
            backgroundColor: AppColors.bgPrimary,
            drawer: ExpenseTrackerHomeDrawerWidget(),
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
                            onPressed: _openDrawer,
                            icon: Icon(Icons.notes_outlined)
                        ),
                        Text("Home", style: TextStyle(
                            color: AppColors.white,
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize20
                        ),),
                        Row(
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseTrackerReportScreen()));
                                },
                                icon: Image.asset("images/starMenu.png", width: 20, height: 20,)
                            ),
                            IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.white,
                                    padding: edge_insets_0,
                                    shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseTrackerReportScreen()));
                                },
                                icon: Icon(CupertinoIcons.slider_horizontal_3)
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: edge_insets_t_24,
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
                                child: Column(
                                  children: [
                                    Container(
                                      margin: edge_insets_x_16,
                                      padding: edge_insets_x_8,
                                      decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: borderRadius.br_10,
                                          boxShadow: [shadows.bs_primary]
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
                                                    "Calendar",
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
                                                    "Total",
                                                    style: TextStyle(
                                                        fontWeight: Fonts.f500,
                                                        fontSize: Fonts.fontSize14),
                                                  )),
                                              Container(
                                                  height: 50,
                                                  alignment: Alignment.center,
                                                  child: const Text(
                                                    "Note",
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
                                          // ExercisesGetAllWorkoutTemplates(),
                                          ExpenseTrackerExpenseDailyScreen(),
                                          ExpenseTrackerExpenseCalendarScreen(),
                                          ExpenseTrackerExpenseMonthlyScreen(),
                                          ExpenseTrackerExpenseTotalScreen(),
                                          ExpenseTrackerExpenseNoteScreen(),
                                        ],
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_x_16,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: borderRadius.br_10,
                            boxShadow: [shadows.bs_primary]),
                        child: Container(
                          padding: edge_insets_y_4,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: Fonts.fontSize14,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseTrackerExpenseCreateExpenseScreen()));
              },
              backgroundColor: AppColors.green,
              shape: RoundedRectangleBorder(borderRadius: borderRadius.br_100),
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseScreenCubit cubit = ExpenseTrackerExpenseScreenCubit(
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
