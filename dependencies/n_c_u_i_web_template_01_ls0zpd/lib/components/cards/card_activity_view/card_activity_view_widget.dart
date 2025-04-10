import '/components/cards/card_activity/card_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_activity_view_model.dart';
export 'card_activity_view_model.dart';

class CardActivityViewWidget extends StatefulWidget {
  const CardActivityViewWidget({super.key});

  @override
  State<CardActivityViewWidget> createState() => _CardActivityViewWidgetState();
}

class _CardActivityViewWidgetState extends State<CardActivityViewWidget> {
  late CardActivityViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardActivityViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Activity feed',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                child: Text(
                  'Below is the recent activity performed on this site.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.cardActivityModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: CardActivityWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardActivityModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: CardActivityWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardActivityModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: CardActivityWidget(),
                    ),
                  ],
                ),
              ),
            ].divide(SizedBox(height: 1.0)),
          ),
        ),
      ),
    );
  }
}
