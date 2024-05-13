import 'package:basic/app/themes/borders.dart';
import 'package:basic/app/themes/shadows.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wizard/flutter_wizard.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/base_stateless_widget.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/edge_insets.dart';
import '../../../../themes/fonts.dart';
import 'expense_tracker_create_expense_choose_category_sub_category_step_controller.dart';
import 'expense_tracker_create_expense_choose_category_sub_category_step_cubit.dart';


class ExpenseTrackerCreateExpenseChooseCategorySubCategoryStep
    extends BaseStatelessWidget<
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepController,
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit,
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState> {
  Function(ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState) onStepFinished;

  ExpenseTrackerCreateExpenseChooseCategorySubCategoryStep(
      {Key? key, super.controller, super.onStateChanged, required this.onStepFinished, required this.categories, required this.selectedIndex}) : super(key: key);
  List<Map<String, dynamic>> categories;
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit,
          ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepState>(
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
                  child: Text(categories[selectedIndex]['text'], style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize16
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: edge_insets_t_16,
                  height: MediaQuery.sizeOf(context).height/4,
                  child: Expanded(child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisExtent: 60,
                        mainAxisSpacing: 16
                      ),
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Container(
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: state.selectedIndex == index? AppColors.green: AppColors.white,
                                side: BorderSide(color: state.selectedIndex == index? AppColors.green : AppColors.iconColor, width: 0.5),
                                shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10)
                            ),
                            onPressed: (){
                              getCubit(context).selectWidget(index);
                              Future.delayed(Duration(milliseconds: 200), () {
                                onStepFinished(getCubit(context).state);
                              });
                            },
                            child: Text(
                              "${categories[selectedIndex]['text']} ${index}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: Fonts.fontSize14,
                                  color: state.selectedIndex == index? AppColors.white: AppColors.grey1
                              ),
                            ),
                          ),
                        );
                      },
                  )),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
                            side: BorderSide(color: AppColors.bgPrimary, width: 1),
                            padding: edge_insets_y_16
                        ),
                        onPressed: (){
                          WizardController wizardController = WizardController.of(context);
                          wizardController.goBack();
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
                    )),
                    SizedBox(width: 36,),
                    Expanded(child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.bgPrimary,
                            shape: RoundedRectangleBorder(borderRadius: borderRadius.br_10),
                            side: BorderSide(color: AppColors.bgPrimary, width: 1),
                            padding: edge_insets_y_16
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width/3,
                          child: Text("Continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: Fonts.fontSize16,
                                fontWeight: Fonts.f600,
                                color: AppColors.white
                            ),),
                        )
                    )),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit cubit = ExpenseTrackerCreateExpenseChooseCategorySubCategoryStepCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
