import 'package:basic/app/expense_tracker/screens/expense_tracker_report_screen/expense_tracker_report_screen.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/buttons.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'expense_tracker_home_drawer_widget_controller.dart';
import 'expense_tracker_home_drawer_widget_cubit.dart';

import 'package:basic/app/core/widgets/base_stateless_widget.dart';

class ExpenseTrackerHomeDrawerWidget
    extends BaseStatelessWidget<
        ExpenseTrackerHomeDrawerWidgetController,
        ExpenseTrackerHomeDrawerWidgetCubit,
        ExpenseTrackerHomeDrawerWidgetState> {

  ExpenseTrackerHomeDrawerWidget(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerHomeDrawerWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerHomeDrawerWidgetCubit,
          ExpenseTrackerHomeDrawerWidgetState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Drawer(
            shape: const RoundedRectangleBorder(),
            width: MediaQuery.sizeOf(context).width / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                            color: AppColors.bgPrimary,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 48,
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Container(
                                              decoration: BoxDecoration(
                                                  border: borders.bb_1px_grey4),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Customer1',
                                                    style: TextStyle(
                                                        fontSize: Fonts.fontSize22,
                                                        fontWeight: Fonts.f500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            actions: [
                                              Column(
                                                children: [
                                                  Container(
                                                      child: Image.asset("images/construction.png",height: 200, fit: BoxFit.fill,)
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                    children: [
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(context);
                                                          },
                                                          child: Text("Close"))
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          );
                                        });
                                  },
                                  child: ClipRRect(
                                    borderRadius: borderRadius.br_100,
                                    child: Image.asset("images/construction.png", height: 80, width: 80, fit: BoxFit.fill,),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Customer1',
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: Fonts.fontSize22,
                                      fontWeight: Fonts.f500),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "customer123@gmail.com",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontWeight: Fonts.f400,
                                      fontSize: Fonts.fontSize18),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  decoration:
                                  BoxDecoration(border: borders.bb_1px_grey1
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: edge_insets_t_16,
                            margin: edge_insets_16,
                            child: IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.grey2
                              ),
                              onPressed: (){context.pop();},
                              icon: Icon(Icons.arrow_back, color: AppColors.textHeading,),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: edge_insets_x_16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextButton(
                                        style: Buttons.sideMenuButton,
                                        onPressed: () {},
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Icon(
                                              Icons.person,
                                              color: AppColors.textHeading,
                                            ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Text(
                                              "Profile",
                                              style: TextStyle(
                                                  color: AppColors.textHeading,
                                                  fontSize: Fonts.fontSize16,
                                                  fontWeight: Fonts.f400),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextButton(
                                        style: Buttons.sideMenuButton,
                                        onPressed: () {},
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Icon(
                                              Icons.star_rate_outlined,
                                              color: AppColors.textHeading,
                                            ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Text(
                                              "Rate us",
                                              style: TextStyle(
                                                  color: AppColors.textHeading,
                                                  fontSize: Fonts.fontSize16,
                                                  fontWeight: Fonts.f400),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  boxShadow: [shadows.bs_grey]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextButton(
                                        style: Buttons.sideMenuButton,
                                        onPressed: () {},
                                        child: const Row(
                                          children: [
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Icon(
                                              Icons.share,
                                              color: AppColors.textHeading,
                                            ),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Text(
                                              "Share app",
                                              style: TextStyle(
                                                  color: AppColors.textHeading,
                                                  fontSize: Fonts.fontSize16,
                                                  fontWeight: Fonts.f400),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_x_16,
                  decoration: const BoxDecoration(
                      boxShadow: [shadows.bs_grey]),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.bgPrimary,
                                padding: edge_insets_y_12,
                                shape: RoundedRectangleBorder(borderRadius: borderRadius.br_5)
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseTrackerReportScreen()));
                            },
                            child: const Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.notes,
                                  color: AppColors.white,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "Report",
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: Fonts.fontSize16,
                                      fontWeight: Fonts.f400),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerHomeDrawerWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerHomeDrawerWidgetCubit cubit = ExpenseTrackerHomeDrawerWidgetCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
