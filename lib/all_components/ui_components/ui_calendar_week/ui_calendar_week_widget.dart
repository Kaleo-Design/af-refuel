import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ui_calendar_week_model.dart';
export 'ui_calendar_week_model.dart';

class UiCalendarWeekWidget extends StatefulWidget {
  const UiCalendarWeekWidget({
    super.key,
    required this.weekList,
    required this.selectedDate,
  });

  final List<DateTime>? weekList;
  final DateTime? selectedDate;

  @override
  State<UiCalendarWeekWidget> createState() => _UiCalendarWeekWidgetState();
}

class _UiCalendarWeekWidgetState extends State<UiCalendarWeekWidget> {
  late UiCalendarWeekModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiCalendarWeekModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedDay = widget.selectedDate;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 64.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).overlay30,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).overlay30,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Builder(
            builder: (context) {
              final currentWeek = widget.weekList!.toList();

              return Row(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(currentWeek.length, (currentWeekIndex) {
                  final currentWeekItem = currentWeek[currentWeekIndex];
                  return Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedDay = currentWeekItem;
                        safeSetState(() {});
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: 48.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: dateTimeFormat("yMMMd", _model.selectedDay) ==
                                  dateTimeFormat("yMMMd", currentWeekItem)
                              ? FlutterFlowTheme.of(context).accent4
                              : FlutterFlowTheme.of(context).overlay0,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateTimeFormat("E", currentWeekItem),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              dateTimeFormat("d", currentWeekItem),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              width: 32.0,
                              height: 2.0,
                              decoration: BoxDecoration(
                                color: dateTimeFormat(
                                            "yMMMd", _model.selectedDay) ==
                                        dateTimeFormat("yMMMd", currentWeekItem)
                                    ? FlutterFlowTheme.of(context).error
                                    : FlutterFlowTheme.of(context).overlay0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
