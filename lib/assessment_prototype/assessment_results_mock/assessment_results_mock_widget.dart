import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'assessment_results_mock_model.dart';
export 'assessment_results_mock_model.dart';

/// A temp space for results used in demo of assessment flow
class AssessmentResultsMockWidget extends StatefulWidget {
  const AssessmentResultsMockWidget({super.key});

  static String routeName = 'assessment_results_mock';
  static String routePath = '/assessmentResultsMock';

  @override
  State<AssessmentResultsMockWidget> createState() =>
      _AssessmentResultsMockWidgetState();
}

class _AssessmentResultsMockWidgetState
    extends State<AssessmentResultsMockWidget> {
  late AssessmentResultsMockModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentResultsMockModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

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
              child: Builder(
                builder: (context) {
                  final assessmentItemsGen = FFAppState()
                      .assessmentDataHolder
                      .assessmentData
                      .where((e) => valueOrDefault<bool>(
                            valueOrDefault<bool>(
                                  e.itemType != AssessmentItemType.introduction,
                                  false,
                                ) ||
                                valueOrDefault<bool>(
                                  e.itemType != AssessmentItemType.unknown,
                                  false,
                                ),
                            false,
                          ))
                      .toList()
                      .sortedList(keyOf: (e) => e.indexInLocal, desc: false)
                      .toList();

                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      4.0,
                      0,
                      96.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: assessmentItemsGen.length,
                    separatorBuilder: (_, __) => SizedBox(height: 4.0),
                    itemBuilder: (context, assessmentItemsGenIndex) {
                      final assessmentItemsGenItem =
                          assessmentItemsGen[assessmentItemsGenIndex];
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 48.0,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          assessmentItemsGenItem.indexInLocal
                                              .toString(),
                                          '0',
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      valueOrDefault<String>(
                                        assessmentItemsGenItem.prompt,
                                        'Introduction',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Response: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (valueOrDefault<bool>(
                                        assessmentItemsGenItem.itemType ==
                                            AssessmentItemType.fixed,
                                        false,
                                      )) {
                                        return Builder(
                                          builder: (context) {
                                            final fixedResponsesGen =
                                                assessmentItemsGenItem
                                                    .typeFixedData
                                                    .responsesOptions
                                                    .where((e) =>
                                                        valueOrDefault<bool>(
                                                          assessmentItemsGenItem
                                                              .typeFixedData
                                                              .selectedResponseIds
                                                              .contains(
                                                                  e.responseId),
                                                          false,
                                                        ))
                                                    .toList();

                                            return Wrap(
                                              spacing: 4.0,
                                              runSpacing: 4.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: List.generate(
                                                  fixedResponsesGen.length,
                                                  (fixedResponsesGenIndex) {
                                                final fixedResponsesGenItem =
                                                    fixedResponsesGen[
                                                        fixedResponsesGenIndex];
                                                return Container(
                                                  height: 28.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            fixedResponsesGenItem
                                                                .label,
                                                            'Undefined',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Figtree',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        );
                                      } else {
                                        return Container(
                                          height: 28.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (assessmentItemsGenItem
                                                              .itemType ==
                                                          AssessmentItemType
                                                              .free) {
                                                        return assessmentItemsGenItem
                                                            .typeFreeData
                                                            .responseText;
                                                      } else if (assessmentItemsGenItem
                                                              .itemType ==
                                                          AssessmentItemType
                                                              .scale) {
                                                        return formatNumber(
                                                          assessmentItemsGenItem
                                                              .typeScaleData
                                                              .responseValue,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .periodDecimal,
                                                        );
                                                      } else {
                                                        return 'Undefined';
                                                      }
                                                    }(),
                                                    'Undefined',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
