import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import 'expense_tracker_expense_calendar_widget_controller.dart';
import 'expense_tracker_expense_calendar_widget_cubit.dart';

import '../../../core/widgets/base_stateless_widget.dart';

class ExpenseTrackerExpenseCalendarWidget
    extends BaseStatelessWidget<
        ExpenseTrackerExpenseCalendarWidgetController,
        ExpenseTrackerExpenseCalendarWidgetCubit,
        ExpenseTrackerExpenseCalendarWidgetState> {

  ExpenseTrackerExpenseCalendarWidget(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpenseTrackerExpenseCalendarWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExpenseTrackerExpenseCalendarWidgetCubit,
          ExpenseTrackerExpenseCalendarWidgetState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return SfCalendar(
            headerDateFormat: "dd/MM/yyyy",
            viewHeaderHeight: 0,
            headerHeight: 0,
            todayHighlightColor: AppColors.green,
            view: CalendarView.month,
            firstDayOfWeek: DateTime.monday,
            dataSource: _getCalendarDataSource(),
            appointmentTextStyle:  TextStyle(
                fontSize: Fonts.fontSize8,
                color: AppColors.white
            ),
            // showWeekNumber: true,
            // weekNumberStyle: WeekNumberStyle(
            //   backgroundColor: AppColors.transparent,
            //   textStyle: TextStyle(
            //     color: AppColors.green
            //   )
            // ),
            monthViewSettings: const MonthViewSettings(
                appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
          );
        },
      ),
    );
  }


  _DataSource _getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    final DateTime today = DateTime.now();
    appointments.add(Appointment(
      startTime: today.add(Duration(days: 2)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 2, hours: 1)), // Set end time (optional)
      subject: '\$675.9', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));
    appointments.add(Appointment(
      startTime: today.add(Duration(days: 2)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 2, hours: 1)), // Set end time (optional)
      subject: '\$763.9', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));
    appointments.add(Appointment(
      startTime: today.add(Duration(days: 2)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 2, hours: 1)), // Set end time (optional)
      subject: '\$105.87', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));

    appointments.add(Appointment(
      startTime: today.add(Duration(days: 18)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 10, hours: 1)), // Set end time (optional)
      subject: '\$675.9', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));
    appointments.add(Appointment(
      startTime: today.add(Duration(days: 18)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 10, hours: 1)), // Set end time (optional)
      subject: '\$768.9', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));
    appointments.add(Appointment(
      startTime: today.add(Duration(days: 18)), // Set start time to a specific date (e.g., 2 days from now)
      endTime: today.add(Duration(days: 10, hours: 1)), // Set end time (optional)
      subject: '\$1074.9', // Set subject (optional)
      color: AppColors.green, // Set color (optional)
    ));
    return _DataSource(appointments);
  }

  @override
  ExpenseTrackerExpenseCalendarWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    ExpenseTrackerExpenseCalendarWidgetCubit cubit = ExpenseTrackerExpenseCalendarWidgetCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
