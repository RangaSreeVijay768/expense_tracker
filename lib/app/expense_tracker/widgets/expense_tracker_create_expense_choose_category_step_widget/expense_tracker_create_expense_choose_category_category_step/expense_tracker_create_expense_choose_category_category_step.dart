import 'package:basic/app/themes/app_colors.dart';
import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/edge_insets.dart';
import 'package:basic/app/themes/fonts.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:objectbox/objectbox.dart';

import 'expense_tracker_create_expense_choose_category_category_step_controller.dart';
import 'expense_tracker_create_expense_choose_category_category_step_cubit.dart';

import 'package:basic/app/core/widgets/base_stateless_widget.dart';

class ExpenseTrackerCreateExpenseChooseCategoryCategoryStep
    extends BaseStatelessWidget<
        ExpenseTrackerCreateExpenseChooseCategoryCategoryStepController,
        ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit,
        ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState> {
  Function(ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState) onStepFinished;

  ExpenseTrackerCreateExpenseChooseCategoryCategoryStep(
      {Key? key, super.controller, super.onStateChanged, required this.onStepFinished}) : super(key: key);
  final List<Map<String, dynamic>> categories = [
    {
      'imagePath': 'images/investment.png',
      'text': 'Loan/ Investment',
    },
    {
      'imagePath': 'images/home.png',
      'text': 'House Expenses',
    },
    {
      'imagePath': 'images/fooding.png',
      'text': 'Fooding',
    },
    {
      'imagePath': 'images/health.png',
      'text': 'Health',
    },
    {
      'imagePath': 'images/vehicle.png',
      'text': 'Vehicle',
    },
    {
      'imagePath': 'images/shirt.png',
      'text': 'Fashion',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit,
          ExpenseTrackerCreateExpenseChooseCategoryCategoryStepState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container(
            margin: edge_insets_x_16,
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
                  child: Text("Choose Category", style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize16
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: edge_insets_t_16,
                  height: MediaQuery.sizeOf(context).height/4,
                  child: Expanded(child: GridView.count(
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      crossAxisCount: 4, // Number of columns
                      children: List.generate(6, (index) {
                        // Generate 6 containers
                        return Container(
                          padding: edge_insets_5,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              border: state.selectedIndex == index ? borders.b_2px_green: null,
                              borderRadius: borderRadius.br_10,
                              boxShadow: [shadows.bs_grey]
                          ),
                          child: InkWell(
                            onTap: (){
                              getCubit(context).selectWidget(index);
                              Future.delayed(Duration(milliseconds: 200), () {
                                onStepFinished(getCubit(context).state);
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Image.asset(
                                  categories[index]['imagePath'],
                                  height: 18,
                                  width: 18,
                                ),
                                Text(
                                  categories[index]['text'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: Fonts.fontSize11,
                                      color: AppColors.grey1
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                  )),
                ),
                SizedBox(height: 20,),
                TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
                        side: BorderSide(color: AppColors.bgPrimary, width: 1),
                        padding: edge_insets_y_16
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width/3,
                      child: Text("Back",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: Fonts.fontSize16,
                            fontWeight: Fonts.f600,
                            color: AppColors.bgPrimary
                        ),),
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit cubit = ExpenseTrackerCreateExpenseChooseCategoryCategoryStepCubit(
        context: context, containerData: categories);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
