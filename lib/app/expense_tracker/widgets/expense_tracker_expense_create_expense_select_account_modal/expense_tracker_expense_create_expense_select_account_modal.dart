import 'package:basic/app/themes/borders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:basic/app/core/modals/base_modal/base_modal_widget.dart';
import 'package:go_router/go_router.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_content/expense_tracker_expense_create_expense_select_account_modal_content.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_controller.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_cubit.dart';
import 'expense_tracker_expense_create_expense_select_account_modal_data.dart';


class ExpenseTrackerExpenseCreateExpenseSelectAccountModal
    extends BaseModalWidget<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalController,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalState,
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalData> {
  ExpenseTrackerExpenseCreateExpenseSelectAccountModal(
      {Key? key, super.controller, super.onStateChanged, super.onModalClosed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit,
          ExpenseTrackerExpenseCreateExpenseSelectAccountModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return InkWell(
            onTap: (){
              openModal(context: context, cubit: getCubit(context));
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width/1.35,
              padding: edge_insets_l_24_t_12_r_10_b_8,
              // height: 40,
              decoration: BoxDecoration(
                  border: borders.bb_1px_grey1
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("select your account", style: TextStyle(
                    color: AppColors.grey1,
                    fontSize: Fonts.fontSize14,
                  ),),
                  Icon(CupertinoIcons.chevron_down, size: 16, color: AppColors.grey1,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit cubit = ExpenseTrackerExpenseCreateExpenseSelectAccountModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return ExpenseTrackerExpenseCreateExpenseSelectAccountModalContent();
  }
}
