import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'submit_response_button_model.dart';
export 'submit_response_button_model.dart';

class SubmitResponseButtonWidget extends StatefulWidget {
  const SubmitResponseButtonWidget({
    super.key,
    required this.itemData,
    required this.assessmentId,
    this.onItemSubmitted,
  });

  final AssessmentItemDataWrapperStruct? itemData;
  final String? assessmentId;
  final Future Function(
          AssessmentResponseActionType responseType, String? jumpToId)?
      onItemSubmitted;

  @override
  State<SubmitResponseButtonWidget> createState() =>
      _SubmitResponseButtonWidgetState();
}

class _SubmitResponseButtonWidgetState
    extends State<SubmitResponseButtonWidget> {
  late SubmitResponseButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitResponseButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (false)
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Assessment Id: ${widget.assessmentId}',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Item Id: ${valueOrDefault<String>(
                  widget.itemData?.itemId,
                  'Missing',
                )}',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        FFButtonWidget(
          onPressed: () async {
            var _shouldSetState = false;
            if (widget.itemData?.itemType == AssessmentItemType.introduction) {
              await widget.onItemSubmitted?.call(
                AssessmentResponseActionType.next,
                null,
              );
              if (_shouldSetState) safeSetState(() {});
              return;
            } else {
              _model.submittedResponseJson =
                  await SubmitAssessmentResponseCall.call(
                itemId: widget.itemData?.itemId,
              );

              _shouldSetState = true;
              if ((_model.submittedResponseJson?.succeeded ?? true)) {
                await widget.onItemSubmitted?.call(
                  functions.getAssesementResponseType(
                      (_model.submittedResponseJson?.jsonBody ?? '')),
                  valueOrDefault<String>(
                    getJsonField(
                      (_model.submittedResponseJson?.jsonBody ?? ''),
                      r'''$.action.jump.item_id''',
                    )?.toString(),
                    '-1',
                  ),
                );
              }
              if (_shouldSetState) safeSetState(() {});
              return;
            }

            if (_shouldSetState) safeSetState(() {});
          },
          text: 'Submit Response',
          options: FFButtonOptions(
            width: double.infinity,
            height: 48.0,
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Figtree',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ],
    );
  }
}
