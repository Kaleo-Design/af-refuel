import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:n_c_u_i_web_template_01_ls0zpd/components/ui_elements/ui_empty/ui_empty_widget.dart'
    as n_c_u_i_web_template_01_ls0zpd;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modal_units_selector_model.dart';
export 'modal_units_selector_model.dart';

class ModalUnitsSelectorWidget extends StatefulWidget {
  const ModalUnitsSelectorWidget({
    super.key,
    required this.mainCTACallback,
  });

  final Future Function(

      /// The newly selected unit ID string
      String unitID)? mainCTACallback;

  @override
  State<ModalUnitsSelectorWidget> createState() =>
      _ModalUnitsSelectorWidgetState();
}

class _ModalUnitsSelectorWidgetState extends State<ModalUnitsSelectorWidget> {
  late ModalUnitsSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalUnitsSelectorModel());

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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: FutureBuilder<ApiCallResponse>(
        future: GetUnitsCall.call(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return n_c_u_i_web_template_01_ls0zpd.UiEmptyWidget();
          }
          final bgContainerGetUnitsResponse = snapshot.data!;

          return AnimatedContainer(
            duration: Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            width: double.infinity,
            constraints: BoxConstraints(
              minHeight: 150.0,
              maxWidth: 770.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 8.0,
                  color: Color(0x19101321),
                  offset: Offset(
                    0.0,
                    -4.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 1.0,
              ),
            ),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Container(
                        width: 64.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Select Unit',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Please select your unit below.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                  ),
                  Builder(
                    builder: (context) {
                      final availableUnits = GetUnitsCall.units(
                            bgContainerGetUnitsResponse.jsonBody,
                          )?.toList() ??
                          [];

                      return ListView.separated(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          4.0,
                          0,
                          12.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: availableUnits.length,
                        separatorBuilder: (_, __) => SizedBox(height: 8.0),
                        itemBuilder: (context, availableUnitsIndex) {
                          final availableUnitsItem =
                              availableUnits[availableUnitsIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                HapticFeedback.lightImpact();
                                if (_model.selectedUnitID ==
                                    availableUnitsItem.unitId) {
                                  _model.selectedUnitID = null;
                                  safeSetState(() {});
                                } else {
                                  _model.selectedUnitID =
                                      availableUnitsItem.unitId;
                                  safeSetState(() {});
                                }
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  minHeight: 56.0,
                                ),
                                decoration: BoxDecoration(
                                  color: _model.selectedUnitID ==
                                          availableUnitsItem.unitId
                                      ? FlutterFlowTheme.of(context).accent1
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: _model.selectedUnitID ==
                                            availableUnitsItem.unitId
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AutoSizeText(
                                        valueOrDefault<String>(
                                          functions.retrieveUnitTitle(
                                              availableUnitsItem),
                                          'Undefined',
                                        ),
                                        textAlign: TextAlign.start,
                                        maxLines: 3,
                                        minFontSize: 10.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          if (_model.selectedUnitID ==
                                              availableUnitsItem.unitId) {
                                            return Icon(
                                              FFIcons.kcheckSquare,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            );
                                          } else {
                                            return Icon(
                                              FFIcons.ksquare,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  if (false)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.setOtherUnitApiResult =
                                await SetUnitCall.call(
                              unit: FFAppConstants.OtherUnitId,
                            );

                            if ((_model.setOtherUnitApiResult?.succeeded ??
                                true)) {
                              authManager.updateAuthUserData(
                                authenticationToken: SetUnitCall.token(
                                  (_model.setOtherUnitApiResult?.jsonBody ??
                                      ''),
                                ),
                                userData: SetUnitCall.account(
                                  (_model.setOtherUnitApiResult?.jsonBody ??
                                      ''),
                                ),
                              );
                              Navigator.pop(context);
                            }

                            safeSetState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currentUserData?.unit.unitId ==
                                      FFAppConstants.OtherUnitId
                                  ? FlutterFlowTheme.of(context).primary
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Text(
                                'Other Unit',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.setNoUnitApiResult = await SetUnitCall.call(
                              unit: FFAppConstants.NoUnitId,
                            );

                            if ((_model.setNoUnitApiResult?.succeeded ??
                                true)) {
                              authManager.updateAuthUserData(
                                authenticationToken: SetUnitCall.token(
                                  (_model.setNoUnitApiResult?.jsonBody ?? ''),
                                ),
                                userData: SetUnitCall.account(
                                  (_model.setNoUnitApiResult?.jsonBody ?? ''),
                                ),
                              );
                              Navigator.pop(context);
                            }

                            safeSetState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: currentUserData?.unit.unitId ==
                                      FFAppConstants.NoUnitId
                                  ? FlutterFlowTheme.of(context).primary
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Text(
                                'No Unit',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: (_model.selectedUnitID == null ||
                                    _model.selectedUnitID == '')
                                ? null
                                : () async {
                                    HapticFeedback.heavyImpact();
                                    await widget.mainCTACallback?.call(
                                      _model.selectedUnitID!,
                                    );
                                    Navigator.pop(context);
                                  },
                            text: 'Select',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor:
                                  FlutterFlowTheme.of(context).accent1,
                              disabledTextColor: Color(0x80FFFFFF),
                              hoverColor: FlutterFlowTheme.of(context).accent1,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              hoverTextColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              hoverElevation: 0.0,
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              HapticFeedback.lightImpact();
                              Navigator.pop(context);
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).overlay30,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).accent4,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              hoverColor:
                                  FlutterFlowTheme.of(context).alternate,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              hoverTextColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              hoverElevation: 3.0,
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 8.0))
                            .addToStart(SizedBox(height: 8.0))
                            .addToEnd(SizedBox(height: 36.0)),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
