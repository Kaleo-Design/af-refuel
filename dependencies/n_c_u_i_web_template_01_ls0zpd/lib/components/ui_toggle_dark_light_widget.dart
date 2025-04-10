import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_toggle_dark_light_model.dart';
export 'ui_toggle_dark_light_model.dart';

class UiToggleDarkLightWidget extends StatefulWidget {
  const UiToggleDarkLightWidget({super.key});

  @override
  State<UiToggleDarkLightWidget> createState() =>
      _UiToggleDarkLightWidgetState();
}

class _UiToggleDarkLightWidgetState extends State<UiToggleDarkLightWidget> {
  late UiToggleDarkLightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiToggleDarkLightModel());

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: 250.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.light);
                  },
                  child: Container(
                    width: 115.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          Theme.of(context).brightness == Brightness.light
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).primaryBackground,
                          FlutterFlowTheme.of(context).alternate,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wb_sunny_rounded,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? FlutterFlowTheme.of(context).primaryText
                                  : FlutterFlowTheme.of(context).secondaryText,
                          size: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Light Mode',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.dark);
                  },
                  child: Container(
                    width: 115.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          Theme.of(context).brightness == Brightness.dark
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).primaryBackground,
                          FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.nightlight_round,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Dark Mode',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
