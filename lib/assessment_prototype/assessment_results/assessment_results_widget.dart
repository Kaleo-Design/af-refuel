import '/assessment_prototype/types/assessment_type_result/assessment_type_result_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'assessment_results_model.dart';
export 'assessment_results_model.dart';

class AssessmentResultsWidget extends StatefulWidget {
  const AssessmentResultsWidget({super.key});

  static String routeName = 'assessment_results';
  static String routePath = '/assessmentResults';

  @override
  State<AssessmentResultsWidget> createState() =>
      _AssessmentResultsWidgetState();
}

class _AssessmentResultsWidgetState extends State<AssessmentResultsWidget> {
  late AssessmentResultsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentResultsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              HapticFeedback.mediumImpact();
              context.pop();
            },
          ),
          title: Text(
            'Assessment Results (Test)',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Figtree',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: wrapWithModel(
                model: _model.assessmentTypeResultModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: AssessmentTypeResultWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
