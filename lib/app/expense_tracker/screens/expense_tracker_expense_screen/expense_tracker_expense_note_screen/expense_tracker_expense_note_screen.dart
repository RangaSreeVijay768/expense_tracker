import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../themes/fonts.dart';
import 'expense_tracker_expense_note_screen_controller.dart';
import 'expense_tracker_expense_note_screen_cubit.dart';

import '../../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseNoteScreen
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseNoteScreenController,
        ExpenseTrackerExpenseNoteScreenCubit,
        ExpenseTrackerExpenseNoteScreenState> {

  ExpenseTrackerExpenseNoteScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseNoteScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseNoteScreenCubit,
          ExpenseTrackerExpenseNoteScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/construction.png", height: 100, width: 100, fit: BoxFit.fill,),
                SizedBox(height: 10,),
                Text("Your notes will be shown here",style: TextStyle(
                    fontSize: Fonts.fontSize14
                ),),
                SizedBox(height: 150,)
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerExpenseNoteScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseNoteScreenCubit cubit = ExpenseTrackerExpenseNoteScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
