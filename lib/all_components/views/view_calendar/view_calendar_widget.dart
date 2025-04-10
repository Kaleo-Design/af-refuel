import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'view_calendar_model.dart';
export 'view_calendar_model.dart';

class ViewCalendarWidget extends StatefulWidget {
  const ViewCalendarWidget({super.key});

  @override
  State<ViewCalendarWidget> createState() => _ViewCalendarWidgetState();
}

class _ViewCalendarWidgetState extends State<ViewCalendarWidget> {
  late ViewCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewCalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowCalendar(
      color: FlutterFlowTheme.of(context).primary,
      iconColor: FlutterFlowTheme.of(context).secondaryText,
      weekFormat: false,
      weekStartsMonday: false,
      initialDate: getCurrentTimestamp,
      rowHeight: 48.0,
      onChange: (DateTimeRange? newSelectedDate) {
        safeSetState(() => _model.calendarSelectedDay = newSelectedDate);
      },
      titleStyle: FlutterFlowTheme.of(context).titleLarge.override(
            fontFamily: 'Figtree',
            letterSpacing: 0.0,
          ),
      dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
            fontFamily: 'Figtree',
            letterSpacing: 0.0,
          ),
      dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Figtree',
            letterSpacing: 0.0,
          ),
      selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: 'Figtree',
            letterSpacing: 0.0,
          ),
      inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: 'Figtree',
            letterSpacing: 0.0,
          ),
    );
  }
}
