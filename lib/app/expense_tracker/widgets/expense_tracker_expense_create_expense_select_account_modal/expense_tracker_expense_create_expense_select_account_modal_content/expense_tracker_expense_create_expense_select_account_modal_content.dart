import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import '../expense_tracker_expense_create_expense_select_account_modal_data.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_content_controller.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_content_cubit.dart';

import 'package:basic/app/core/modals/base_modal_content/base_modal_content_widget.dart';

class ExpenseTrackerExpenseCreateExpenseSelectAccountModalContent
    extends BaseModalContent<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentController,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentState,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalData> {

  ExpenseTrackerExpenseCreateExpenseSelectAccountModalContent(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit,
          ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            height: MediaQuery.sizeOf(context).height/2,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Container(
                  margin: edge_insets_t_7,
                  width: MediaQuery.sizeOf(context).width/5.2,
                  decoration: BoxDecoration(
                    border: borders.bt_4px_grey1,
                    borderRadius: borderRadius.br_5,
                  ),
                ),
                Container(
                  margin: edge_insets_t_16,
                  child: Text("Select Account", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize16
                  ),),
                ),
                SizedBox(height: 24,),
                Container(
                  margin: edge_insets_x_20,
                  // padding: edge_insets_x_24_y_17,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [shadows.bs_grey],
                      borderRadius: borderRadius.br_10
                  ),
                  child: TextButton(
                    onPressed: (){
                      getCubit(context).selectWidget(0);
                    },
                    style: TextButton.styleFrom(
                        padding: edge_insets_x_24_y_17,
                        shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person, size: 22, color: AppColors.iconColor,),
                            SizedBox(width: 26,),
                            Text("Accounts", style: TextStyle(
                              fontSize: Fonts.fontSize18,
                            ),)
                          ],
                        ),
                        Icon(state.selectedIndex == 0 ? Icons.radio_button_checked : Icons.radio_button_off, color:state.selectedIndex == 0 ? AppColors.green : AppColors.grey1,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Container(
                  margin: edge_insets_x_20,
                  // padding: edge_insets_x_24_y_17,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [shadows.bs_grey],
                      borderRadius: borderRadius.br_10
                  ),
                  child: TextButton(
                    onPressed: (){
                      getCubit(context).selectWidget(1);
                    },
                    style: TextButton.styleFrom(
                        padding: edge_insets_x_24_y_17,
                        shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.credit_card, size: 22, color: AppColors.iconColor,),
                            SizedBox(width: 26,),
                            Text("Credit card", style: TextStyle(
                              fontSize: Fonts.fontSize18,
                            ),)
                          ],
                        ),
                        Icon(state.selectedIndex == 1 ? Icons.radio_button_checked : Icons.radio_button_off, color: state.selectedIndex == 1 ? AppColors.green : AppColors.grey1,)
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
  ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit cubit = ExpenseTrackerExpenseCreateExpenseSelectAccountModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
