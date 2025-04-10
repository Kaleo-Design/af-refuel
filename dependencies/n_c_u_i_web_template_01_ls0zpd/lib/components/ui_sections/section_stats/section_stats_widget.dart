import '/components/cards/card_dashboard/card_dashboard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_stats_model.dart';
export 'section_stats_model.dart';

class SectionStatsWidget extends StatefulWidget {
  const SectionStatsWidget({super.key});

  @override
  State<SectionStatsWidget> createState() => _SectionStatsWidgetState();
}

class _SectionStatsWidgetState extends State<SectionStatsWidget> {
  late SectionStatsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionStatsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: wrapWithModel(
                    model: _model.cardDashboardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: CardDashboardWidget(
                      icon: Icon(
                        Icons.ssid_chart_rounded,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 48.0,
                      ),
                      title: 'Income this month',
                      value: '\$50k',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: wrapWithModel(
                    model: _model.cardDashboardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: CardDashboardWidget(
                      icon: Icon(
                        Icons.ssid_chart_rounded,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 48.0,
                      ),
                      title: 'Total Orders',
                      value: '1.2k',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: wrapWithModel(
                    model: _model.cardDashboardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: CardDashboardWidget(
                      icon: Icon(
                        Icons.receipt_long_rounded,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 48.0,
                      ),
                      title: 'Total Orders',
                      value: '1.2k',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: wrapWithModel(
                    model: _model.cardDashboardModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: CardDashboardWidget(
                      icon: Icon(
                        Icons.person_add_alt,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 48.0,
                      ),
                      title: 'New Customers',
                      value: '1.5k',
                    ),
                  ),
                ),
              ]
                  .divide(SizedBox(width: 16.0))
                  .addToStart(SizedBox(width: 16.0))
                  .addToEnd(SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
