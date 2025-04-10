import '/assessment_prototype/jml/jml_group_render/jml_group_render_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'assessment_type_result_model.dart';
export 'assessment_type_result_model.dart';

class AssessmentTypeResultWidget extends StatefulWidget {
  const AssessmentTypeResultWidget({super.key});

  @override
  State<AssessmentTypeResultWidget> createState() =>
      _AssessmentTypeResultWidgetState();
}

class _AssessmentTypeResultWidgetState
    extends State<AssessmentTypeResultWidget> {
  late AssessmentTypeResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentTypeResultModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.resultResponse = await AssessmentsResultsCall.call();

      if ((_model.resultResponse?.succeeded ?? true)) {
        _model.resultData =
            functions.parseResultsJson((_model.resultResponse?.jsonBody ?? ''));
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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_model.resultData?.heading != null &&
              (_model.resultData?.heading)!.isNotEmpty)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: wrapWithModel(
                model: _model.headerModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: _model.resultData!.heading,
                ),
              ),
            ),
          if (_model.resultData?.heading != null &&
              (_model.resultData?.heading)!.isNotEmpty)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: wrapWithModel(
                model: _model.meaningModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: _model.resultData!.meaning,
                ),
              ),
            ),
          if (_model.resultData?.heading != null &&
              (_model.resultData?.heading)!.isNotEmpty)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: wrapWithModel(
                model: _model.saveModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: _model.resultData!.save,
                ),
              ),
            ),
          if (_model.resultData?.heading != null &&
              (_model.resultData?.heading)!.isNotEmpty)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: wrapWithModel(
                model: _model.scoringModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: _model.resultData!.scoring,
                ),
              ),
            ),
        ].addToStart(SizedBox(height: 24.0)).addToEnd(SizedBox(height: 96.0)),
      ),
    );
  }
}
