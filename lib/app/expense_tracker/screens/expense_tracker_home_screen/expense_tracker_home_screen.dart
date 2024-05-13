import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/edge_insets.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_date_time_utils.dart';
import '../../../core/widgets/base_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import 'expense_tracker_home_screen_controller.dart';
import 'expense_tracker_home_screen_cubit.dart';


class ExpenseTrackerHomeScreen
    extends BaseStatelessWidget<
        ExpenseTrackerHomeScreenController,
        ExpenseTrackerHomeScreenCubit,
        ExpenseTrackerHomeScreenState> {

  ExpenseTrackerHomeScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerHomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerHomeScreenCubit,
          ExpenseTrackerHomeScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/construction.png", height: 100, width: 100, fit: BoxFit.fill,),
                SizedBox(height: 10,),
                Text("Home screen will be displayed here",style: TextStyle(
                    fontSize: Fonts.fontSize14
                ),),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerHomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerHomeScreenCubit cubit = ExpenseTrackerHomeScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
