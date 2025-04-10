import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'assessment_type_scale_model.dart';
export 'assessment_type_scale_model.dart';

class AssessmentTypeScaleWidget extends StatefulWidget {
  const AssessmentTypeScaleWidget({
    super.key,
    required this.assessmentItemData,
    required this.prompt,
    required this.onScaleSelectCallback,
  });

  final AssessmentItemDataWrapperStruct? assessmentItemData;
  final String? prompt;
  final Future Function(double selectedValue)? onScaleSelectCallback;

  @override
  State<AssessmentTypeScaleWidget> createState() =>
      _AssessmentTypeScaleWidgetState();
}

class _AssessmentTypeScaleWidgetState extends State<AssessmentTypeScaleWidget> {
  late AssessmentTypeScaleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentTypeScaleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                  'Record your response below.',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.assessmentItemData?.typeScaleData.min
                                    .emoji,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.assessmentItemData?.typeScaleData.max
                                    .emoji,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Slider(
                    activeColor: FlutterFlowTheme.of(context).primary,
                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                    min: valueOrDefault<double>(
                      widget.assessmentItemData?.typeScaleData.min.value
                          .toDouble(),
                      0.0,
                    ),
                    max: valueOrDefault<double>(
                      widget.assessmentItemData?.typeScaleData.max.value
                          .toDouble(),
                      0.0,
                    ),
                    value: _model.scaleSllideValue ??= valueOrDefault<double>(
                      valueOrDefault<double>(
                                widget.assessmentItemData?.typeScaleData
                                    .responseValue,
                                0.0,
                              ) >
                              0.0
                          ? widget
                              .assessmentItemData?.typeScaleData.responseValue
                          : widget
                              .assessmentItemData?.typeScaleData.min.value
                              .toDouble(),
                      1.0,
                    ),
                    label: _model.scaleSllideValue?.toStringAsFixed(0),
                    divisions:
                        widget.assessmentItemData!.typeScaleData.max.value -
                            widget.assessmentItemData!.typeScaleData.min.value,
                    onChanged: (newValue) async {
                      newValue = double.parse(newValue.toStringAsFixed(0));
                      safeSetState(() => _model.scaleSllideValue = newValue);
                      await widget.onScaleSelectCallback?.call(
                        _model.scaleSllideValue!,
                      );
                    },
                  ),
                ),
              ].divide(SizedBox(height: 8.0)),
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
