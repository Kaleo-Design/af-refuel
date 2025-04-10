import '/components/trend_opacity_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_card_heat_map_model.dart';
export 'ui_card_heat_map_model.dart';

class UiCardHeatMapWidget extends StatefulWidget {
  const UiCardHeatMapWidget({
    super.key,
    required this.datesList,
  });

  final List<DateTime>? datesList;

  @override
  State<UiCardHeatMapWidget> createState() => _UiCardHeatMapWidgetState();
}

class _UiCardHeatMapWidgetState extends State<UiCardHeatMapWidget> {
  late UiCardHeatMapModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiCardHeatMapModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 70.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.uiTitleModel,
              updateCallback: () => safeSetState(() {}),
              child: UiTitleWidget(
                title: 'Weekly Goals',
                subTitle: 'Below is a summary of your team\'s activity.',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Builder(
                builder: (context) {
                  final dates = FFAppState().months.toList();

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 1.5,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: dates.length,
                    itemBuilder: (context, datesIndex) {
                      final datesItem = dates[datesIndex];
                      return TrendOpacityWidget(
                        key: Key('Keyuuq_${datesIndex}_of_${dates.length}'),
                        activity: datesItem,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ].addToEnd(SizedBox(height: 16.0)),
      ),
    );
  }
}
