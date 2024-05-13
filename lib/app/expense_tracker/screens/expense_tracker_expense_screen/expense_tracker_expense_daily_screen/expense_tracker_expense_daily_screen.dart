import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/edge_insets.dart';
import 'package:basic/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'expense_tracker_expense_daily_screen_controller.dart';
import 'expense_tracker_expense_daily_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseDailyScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseDailyScreenController,
        ExpenseTrackerExpenseDailyScreenCubit,
        ExpenseTrackerExpenseDailyScreenState> {

  ExpenseTrackerExpenseDailyScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseDailyScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseDailyScreenCubit,
          ExpenseTrackerExpenseDailyScreenState>(
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
                Container(
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
                          Row(
                            children: [
                              Text("24 ", style: TextStyle(
                                fontWeight: Fonts.f500,
                                fontSize: Fonts.fontSize14,
                              ),),
                              Container(
                                padding: edge_insets_5,
                                decoration: BoxDecoration(
                                    color: AppColors.bgPrimary,
                                    borderRadius: borderRadius.br_5
                                ),
                                child: Text("Wed",style: TextStyle(
                                    fontSize: Fonts.fontSize8,
                                    color: AppColors.white
                                ),),
                              ),
                              Text(" 5/2023", style: TextStyle(
                                  fontWeight: Fonts.f600,
                                  fontSize: Fonts.fontSize10,
                                  color: AppColors.grey1
                              ),)
                            ],
                          ),
                          Text("\$ 0.00", style: TextStyle(
                              fontSize: Fonts.fontSize12,
                              fontWeight: Fonts.f500,
                              color: AppColors.bgPrimary2
                          ),),
                          Text("\$ 3,666.66", style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14,
                              color: AppColors.textRed
                          ),)
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Home needs AC and stand electronic appliances ", style: TextStyle(
                              fontSize: Fonts.fontSize10,
                              color: AppColors.grey1
                          ),),
                          Text("\$ 3,666.66", style: TextStyle(
                              fontSize: Fonts.fontSize10,
                              color: AppColors.grey1
                          ),)
                        ],
                      ),
                      Text("Accounts", style: TextStyle(
                        fontSize: Fonts.fontSize10
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 4,),
                Container(
                  margin: edge_insets_x_16,
                  padding: edge_insets_y_10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text("27 ", style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14,
                            ),),
                            Container(
                              padding: edge_insets_5,
                              decoration: BoxDecoration(
                                  color: AppColors.textRed,
                                  borderRadius: borderRadius.br_5
                              ),
                              child: Text("Sun",style: TextStyle(
                                  fontSize: Fonts.fontSize8,
                                  color: AppColors.white
                              ),),
                            ),
                            Text(" 5/2023", style: TextStyle(
                                fontWeight: Fonts.f600,
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        child: Text("\$ 0.00", style: TextStyle(
                            fontSize: Fonts.fontSize12,
                            fontWeight: Fonts.f500,
                            color: AppColors.bgPrimary2
                        ),),
                      ),
                      Container(
                        child: Text("\$ 3,666.66", style: TextStyle(
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize14,
                            color: AppColors.textRed
                        ),),
                      )
                    ],
                  ),
                ),


                Divider(color: AppColors.grey1, thickness: 0.5,),


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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("House Expense",style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.textHeading
                            ),),
                            Text("Maid/ Cook", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Text("Accounts", style: TextStyle(
                            fontSize: Fonts.fontSize12,
                            color: AppColors.textHeading
                        ),),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Text("\$ 0.00", style: TextStyle(
                            fontWeight: Fonts.f600,
                            fontSize: Fonts.fontSize12,
                            color: AppColors.textRed
                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4,),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Fooding",style: TextStyle(
                                fontSize: Fonts.fontSize12,
                                color: AppColors.textHeading
                            ),),
                            Text("Others", style: TextStyle(
                                fontSize: Fonts.fontSize10,
                                color: AppColors.grey1
                            ),)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Text("Accounts", style: TextStyle(
                            fontSize: Fonts.fontSize12,
                            color: AppColors.textHeading
                        ),),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.sizeOf(context).width/4,
                        child: Text("\$ 0.00", style: TextStyle(
                            fontWeight: Fonts.f600,
                            fontSize: Fonts.fontSize12,
                            color: AppColors.textRed
                        ),),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 4,),
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
                      Text("Repeat", style: TextStyle(
                          fontSize: Fonts.fontSize12,
                          color: AppColors.grey1
                      ),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Personal Loan for Diary",style: TextStyle(
                              fontSize: Fonts.fontSize12,
                              color: AppColors.textHeading
                          ),),
                          Text("6/5, 6/7, 6/10", style: TextStyle(
                              fontSize: Fonts.fontSize8,
                              color: AppColors.grey1
                          ),)
                        ],
                      ),
                      Text("-96,191.00", style: TextStyle(
                          fontWeight: Fonts.f600,
                          fontSize: Fonts.fontSize12,
                          color: AppColors.textHeading
                      ),)
                    ],
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
  ExpenseTrackerExpenseDailyScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseDailyScreenCubit cubit = ExpenseTrackerExpenseDailyScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
