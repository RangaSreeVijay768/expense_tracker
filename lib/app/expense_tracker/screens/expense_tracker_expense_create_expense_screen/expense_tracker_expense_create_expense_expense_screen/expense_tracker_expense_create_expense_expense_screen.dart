import 'dart:io';

import 'package:basic/app/core/utils/app_date_time_utils.dart';
import 'package:basic/app/expense_tracker/widgets/expense_tracker_expense_create_expense_select_account_modal/expense_tracker_expense_create_expense_select_account_modal.dart';
import 'package:basic/app/expense_tracker/widgets/expense_tracker_expense_create_expense_select_category_modal/expense_tracker_expense_create_expense_select_category_modal.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/edge_insets.dart';
import 'package:basic/app/themes/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/database/boolean_status.dart';
import '../../../../themes/app_colors.dart';
import 'expense_tracker_expense_create_expense_expense_screen_controller.dart';
import 'expense_tracker_expense_create_expense_expense_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseCreateExpenseExpenseScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseCreateExpenseExpenseScreenController,
        ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit,
        ExpenseTrackerExpenseCreateExpenseExpenseScreenState> {

  ExpenseTrackerExpenseCreateExpenseExpenseScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit,
          ExpenseTrackerExpenseCreateExpenseExpenseScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            padding: edge_insets_x_16,
            child: Column(
              children: [
                Container(
                  margin: edge_insets_t_4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Date", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f500
                      ),),
                      Container(
                        width: MediaQuery.sizeOf(context).width/1.35,
                        padding: edge_insets_l_24_t_12_r_10_b_8,
                        // height: 40,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: Text("${AppDateTimeUtils.getCurrentDate()} (${AppDateTimeUtils.getCurrentDay()})", style: TextStyle(
                          color: AppColors.grey1,
                          fontSize: Fonts.fontSize14,
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f500
                      ),),
                      ExpenseTrackerExpenseCreateExpenseSelectAccountModal(),
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f500
                      ),),
                      ExpenseTrackerExpenseCreateExpenseSelectCategoryModal()
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f500
                      ),),
                      Container(
                        width: MediaQuery.sizeOf(context).width/1.35,
                        height: 40,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "000",
                            prefix: SizedBox(width: 24,),
                            hintStyle: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1,
                                fontWeight: Fonts.f400
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Note", style: TextStyle(
                          fontSize: Fonts.fontSize14,
                          fontWeight: Fonts.f500
                      ),),
                      Container(
                        width: MediaQuery.sizeOf(context).width/1.35,
                        height: 40,
                        decoration: BoxDecoration(
                            border: borders.bb_1px_grey1
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "add note.....",
                            prefix: SizedBox(width: 24,),
                            hintStyle: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1,
                                fontWeight: Fonts.f400
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_24,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        padding: edge_insets_y_10,
                        margin: edge_insets_t_10,
                        decoration: BoxDecoration(
                            border: borders.b_05px_iconColor,
                            borderRadius: borderRadius.br_10
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "add note.....",
                            prefix: SizedBox(width: 30,),
                            hintStyle: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1,
                                fontWeight: Fonts.f400
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: edge_insets_l_24,
                        color: AppColors.white,
                        child: Text("Description",style: TextStyle(
                            fontSize: Fonts.fontSize14,
                            fontWeight: Fonts.f500
                        ),),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: edge_insets_t_24,
                  child: InkWell(
                    onTap: (){
                      getCubit(context).pickFile();
                    },
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        state.filePickerStatus != BooleanStatus.picked
                        ? Container(
                          width: MediaQuery.sizeOf(context).width,
                          padding: edge_insets_y_36,
                          margin: edge_insets_t_10,
                          decoration: BoxDecoration(
                              border: borders.b_05px_iconColor,
                              borderRadius: borderRadius.br_10
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.camera_alt_outlined, size: 40, color: AppColors.grey1,),
                              Text("Upload Photo/Video", style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  color: AppColors.grey1
                              ),)
                            ],
                          ),
                        )
                        : Container(
                          width: MediaQuery.sizeOf(context).width,
                          padding: edge_insets_y_8,
                          margin: edge_insets_t_10,
                          decoration: BoxDecoration(
                              border: borders.b_05px_iconColor,
                              borderRadius: borderRadius.br_10
                          ),
                          child: Column(
                            children: [
                              Image.file(File(state.file!), height: 100, width: 100, fit: BoxFit.fill,),
                              Text(state.file!.split('/').last.toString(), style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  color: AppColors.grey1
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          margin: edge_insets_l_24,
                          color: AppColors.white,
                          child: Text("Upload bill",style: TextStyle(
                              fontSize: Fonts.fontSize14,
                              fontWeight: Fonts.f500
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: edge_insets_t_70,
                  child: Row(
                    children: [
                      SizedBox(width: 40,),
                      Expanded(child: TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary,
                            padding: edge_insets_y_16,
                            shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                          ),
                          child: Text("Save", style: TextStyle(
                            color: AppColors.white,
                              fontSize: Fonts.fontSize20,
                              fontWeight: Fonts.f600
                          ),)
                      )),
                      SizedBox(width: 40,),
                    ],
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
  ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit cubit = ExpenseTrackerExpenseCreateExpenseExpenseScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
