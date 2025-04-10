import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'assessment_type_fixed_model.dart';
export 'assessment_type_fixed_model.dart';

class AssessmentTypeFixedWidget extends StatefulWidget {
  const AssessmentTypeFixedWidget({
    super.key,
    required this.assessmentItemData,
    required this.prompt,
    required this.onSelectCallback,
  });

  final AssessmentItemDataWrapperStruct? assessmentItemData;
  final String? prompt;
  final Future Function(String responseID)? onSelectCallback;

  @override
  State<AssessmentTypeFixedWidget> createState() =>
      _AssessmentTypeFixedWidgetState();
}

class _AssessmentTypeFixedWidgetState extends State<AssessmentTypeFixedWidget>
    with TickerProviderStateMixin {
  late AssessmentTypeFixedModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentTypeFixedModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
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
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.prompt,
                    'Answer question below',
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    'Select ${widget.assessmentItemData?.typeFixedData.selectMax == 1 ? 'an option' : 'up to ${widget.assessmentItemData?.typeFixedData.selectMax.toString()} options'} below.',
                    'Select an option below.',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Builder(
              builder: (context) {
                final optionsGen = widget
                        .assessmentItemData?.typeFixedData.responsesOptions
                        .sortedList(keyOf: (e) => e.responseId, desc: false)
                        .toList() ??
                    [];

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(optionsGen.length, (optionsGenIndex) {
                    final optionsGenItem = optionsGen[optionsGenIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        HapticFeedback.mediumImpact();
                        await widget.onSelectCallback?.call(
                          optionsGenItem.responseId,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget.assessmentItemData?.typeFixedData
                                  .selectedResponseIds
                                  .contains(optionsGenItem.responseId),
                              false,
                            )
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              valueOrDefault<bool>(
                                widget.assessmentItemData?.typeFixedData
                                    .selectedResponseIds
                                    .contains(optionsGenItem.responseId),
                                false,
                              )
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).alternate,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  optionsGenItem.label,
                                  'Undefined',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              if (valueOrDefault<bool>(
                                widget.assessmentItemData?.typeFixedData
                                    .selectedResponseIds
                                    .contains(optionsGenItem.responseId),
                                false,
                              ))
                                Icon(
                                  FFIcons.kcheckCircleBroken,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!,
                      effects: [
                        VisibilityEffect(duration: 1.ms),
                        FadeEffect(
                          curve: Curves.easeInOut,
                          delay: 0.0.ms,
                          duration: 600.0.ms,
                          begin: 0.0,
                          end: 1.0,
                        ),
                        MoveEffect(
                          curve: Curves.easeInOut,
                          delay: valueOrDefault<double>(
                            optionsGenIndex * 0.50,
                            50.0,
                          ).ms,
                          duration: 300.0.ms,
                          begin: Offset(0.0, 40.0),
                          end: Offset(0.0, 0.0),
                        ),
                        TiltEffect(
                          curve: Curves.easeInOut,
                          delay: valueOrDefault<double>(
                            optionsGenIndex * 0.50,
                            50.0,
                          ).ms,
                          duration: 300.0.ms,
                          begin: Offset(0.873, 0),
                          end: Offset(0, 0),
                        ),
                      ],
                    );
                  }).divide(SizedBox(height: 8.0)),
                );
              },
            ),
          ),
        ]
            .divide(SizedBox(height: 24.0))
            .addToStart(SizedBox(height: 24.0))
            .addToEnd(SizedBox(height: 96.0)),
      ),
    );
  }
}
