import 'package:basic/app/themes/borders.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import 'expense_tracker_expense_monthly_screen_controller.dart';
import 'expense_tracker_expense_monthly_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseMonthlyScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseMonthlyScreenController,
        ExpenseTrackerExpenseMonthlyScreenCubit,
        ExpenseTrackerExpenseMonthlyScreenState> {

  ExpenseTrackerExpenseMonthlyScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseMonthlyScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseMonthlyScreenCubit,
          ExpenseTrackerExpenseMonthlyScreenState>(
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
                SizedBox(height: 4,),
                InkWell(
                  onTap: (){
                    getCubit(context).expand(state.isExpanded == false ? true : false);
                  },
                  child: Container(
                    margin: edge_insets_x_16,
                    padding: edge_insets_y_10,
                    decoration: BoxDecoration(
                        border: borders.bb_1px_grey1
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("May", style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                fontWeight: Fonts.f500
                            ),),
                            SizedBox(),
                            Text("\$ 150,000.00", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                fontWeight: Fonts.f500,
                                color: AppColors.bgPrimary2
                            ),),
                            Text("\$ 144,44.65", style: TextStyle(
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize12,
                                color: AppColors.green
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 - 31", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),),
                            Text("\$ 5,586.34", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                state.isExpanded == true
                ? Container(
                  color: AppColors.grey3,
                  child: Column(
                    children: [
                      Container(
                        margin: edge_insets_x_16,
                        padding: edge_insets_l_16_y_16,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("05.29 - 06.04", style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.textHeading
                              ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("\$ 0.00", style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.bgPrimary2
                              ),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("\$ 0.00",style: TextStyle(
                                      fontSize: Fonts.fontSize12,
                                      color: AppColors.green
                                  ),),
                                  Text("\$ 0.00", style: TextStyle(
                                      fontSize: Fonts.fontSize10,
                                      color: AppColors.grey1
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_x_16,
                        padding: edge_insets_l_16_y_16,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("05.29 - 06.04", style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.textHeading
                              ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("\$ 0.00", style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.bgPrimary2
                              ),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("\$ 0.00",style: TextStyle(
                                      fontSize: Fonts.fontSize12,
                                      color: AppColors.green
                                  ),),
                                  Text("\$ 0.00", style: TextStyle(
                                      fontSize: Fonts.fontSize10,
                                      color: AppColors.grey1
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_x_16,
                        padding: edge_insets_l_16_y_16,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("05.29 - 06.04", style: TextStyle(
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.textHeading
                              ),),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Text("\$ 0.00", style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize12,
                                  color: AppColors.bgPrimary2
                              ),),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.sizeOf(context).width/4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("\$ 0.00",style: TextStyle(
                                      fontSize: Fonts.fontSize12,
                                      color: AppColors.green
                                  ),),
                                  Text("\$ 0.00", style: TextStyle(
                                      fontSize: Fonts.fontSize10,
                                      color: AppColors.grey1
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                : SizedBox(),
                SizedBox(height: 4,),
                InkWell(
                  onTap: (){
                    getCubit(context).expand(state.isExpanded == false ? true : false);
                  },
                  child: Container(
                    margin: edge_insets_x_16,
                    padding: edge_insets_y_10,
                    decoration: BoxDecoration(
                        border: borders.bb_1px_grey1
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Apr", style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                fontWeight: Fonts.f500
                            ),),
                            SizedBox(),
                            Text("\$ 150,000.00", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                fontWeight: Fonts.f500,
                                color: AppColors.bgPrimary2
                            ),),
                            Text("\$ 144,44.65", style: TextStyle(
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize12,
                                color: AppColors.green
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 - 31", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),),
                            Text("\$ 5,586.34", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 4,),
                InkWell(
                  onTap: (){
                    getCubit(context).expand(state.isExpanded == false ? true : false);
                  },
                  child: Container(
                    margin: edge_insets_x_16,
                    padding: edge_insets_y_10,
                    decoration: BoxDecoration(
                        border: borders.bb_1px_grey1
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mar", style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                fontWeight: Fonts.f500
                            ),),
                            SizedBox(),
                            Text("\$ 150,000.00", style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                fontWeight: Fonts.f500,
                                color: AppColors.bgPrimary2
                            ),),
                            Text("\$ 144,44.65", style: TextStyle(
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize12,
                                color: AppColors.green
                            ),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 - 31", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),),
                            Text("\$ 5,586.34", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseMonthlyScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseMonthlyScreenCubit cubit = ExpenseTrackerExpenseMonthlyScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
