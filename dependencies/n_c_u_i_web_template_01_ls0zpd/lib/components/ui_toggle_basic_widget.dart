import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_toggle_basic_model.dart';
export 'ui_toggle_basic_model.dart';

class UiToggleBasicWidget extends StatefulWidget {
  const UiToggleBasicWidget({
    super.key,
    bool? toggledOnParameter,
  }) : this.toggledOnParameter = toggledOnParameter ?? false;

  final bool toggledOnParameter;

  @override
  State<UiToggleBasicWidget> createState() => _UiToggleBasicWidgetState();
}

class _UiToggleBasicWidgetState extends State<UiToggleBasicWidget> {
  late UiToggleBasicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiToggleBasicModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.toggledOnParameter != null) {
        // toggle_componentState
        _model.toggledOn = widget!.toggledOnParameter;
        safeSetState(() {});
      }
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
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          // toggle_componentState
          _model.toggledOn = !_model.toggledOn;
          safeSetState(() {});
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          width: 92.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: _model.toggledOn
                ? FlutterFlowTheme.of(context).accent1
                : FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: _model.toggledOn
                  ? FlutterFlowTheme.of(context).primary
                  : FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 42.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: _model.toggledOn
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              1.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: _model.toggledOn
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          width: 0.5,
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      width: _model.toggledOn ? 0.0 : 44.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wb_sunny_rounded,
                            color: _model.toggledOn
                                ? FlutterFlowTheme.of(context).secondaryText
                                : FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.nightlight_round,
                            color: _model.toggledOn
                                ? FlutterFlowTheme.of(context).info
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
