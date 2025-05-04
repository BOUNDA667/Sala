import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime selectedDay;
  final ValueChanged<DateTime>? onDaySelected;
  final DateTime? firstDay;
  final DateTime? lastDay;
  final DateTime focusedDay;
  final ColorScheme? colorScheme;

  const CustomCalendar({
    super.key,
    required this.selectedDay,
    required this.focusedDay,
    this.onDaySelected,
    this.firstDay,
    this.lastDay,
    this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final cs = colorScheme ?? Theme.of(context).colorScheme;
    final DateTime fDay = firstDay ?? DateTime.utc(2010, 10, 16);
    final DateTime lDay = lastDay ?? DateTime.utc(2030, 3, 14);

    return TableCalendar(
      calendarFormat: CalendarFormat.week,
      firstDay: fDay,
      lastDay: lDay,
      focusedDay: focusedDay,
      daysOfWeekVisible: false,
      selectedDayPredicate: (day) => isSameDay(day, selectedDay),
      onDaySelected: (selectedDay, focusedDay) {
        if (onDaySelected != null) {
          onDaySelected!(selectedDay);
        }
      },
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          color: cs.onSurface.withValues(alpha: 0.7),
          fontWeight: FontWeight.w500,
        ),
        weekendStyle: TextStyle(
          color: cs.onSurface.withValues(alpha: 0.6),
          fontWeight: FontWeight.w500,
        ),
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(color: cs.onSurface),
        weekendTextStyle: TextStyle(color: cs.onSurface.withValues(alpha: 0.8)),
        selectedDecoration: BoxDecoration(
          color: cs.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: cs.primaryContainer.withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(
          color: cs.onPrimary,
          fontWeight: FontWeight.bold,
        ),
        todayTextStyle: TextStyle(color: cs.onSurface),
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          color: cs.onSurface,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        leftChevronIcon: FaIcon(
          FontAwesomeIcons.chevronLeft,
          color: cs.onSurface,
          size: 16,
        ),
        rightChevronIcon: FaIcon(
          FontAwesomeIcons.chevronRight,
          color: cs.onSurface,
          size: 16,
        ),
      ),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${day.day}',
                  style: TextStyle(color: cs.onSurface),
                ),
                Text(
                  DateFormat.E().format(day).toLowerCase(),
                  style: TextStyle(
                    color: cs.onSurface.withValues(alpha: 0.6),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
        selectedBuilder: (context, day, focusedDay) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: BoxDecoration(
              color: cs.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${day.day}',
                  style: TextStyle(
                    color: cs.onPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  DateFormat.E().format(day).toLowerCase(),
                  style: TextStyle(
                    color: cs.onPrimary.withValues(alpha: 0.8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
