import '/assessment_prototype/submit_response_button/submit_response_button_widget.dart';
import '/assessment_prototype/types/assessment_type_fixed/assessment_type_fixed_widget.dart';
import '/assessment_prototype/types/assessment_type_free/assessment_type_free_widget.dart';
import '/assessment_prototype/types/assessment_type_introduction/assessment_type_introduction_widget.dart';
import '/assessment_prototype/types/assessment_type_scale/assessment_type_scale_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'assessment_dev_model.dart';
export 'assessment_dev_model.dart';

class AssessmentDevWidget extends StatefulWidget {
  const AssessmentDevWidget({
    super.key,
    required this.assessmentContentID,
  });

  final String? assessmentContentID;

  static String routeName = 'assessment_dev';
  static String routePath = '/assessmentDev';

  @override
  State<AssessmentDevWidget> createState() => _AssessmentDevWidgetState();
}

class _AssessmentDevWidgetState extends State<AssessmentDevWidget> {
  late AssessmentDevModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentDevModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.assessApiResult = await ContentDetailMockCall.call(
        contentId: widget.assessmentContentID,
      );

      if ((_model.assessApiResult?.succeeded ?? true)) {
        _model.mappedAssessmentDataTest = AssessmentInfoWrapperStruct(
          reminder: true,
          skip: true,
          assessmentId: ContentDetailMockCall.assessmentID(
            (_model.assessApiResult?.jsonBody ?? ''),
          ),
        );
        safeSetState(() {});
        while (_model.loopIndex <
            ContentDetailMockCall.items(
              (_model.assessApiResult?.jsonBody ?? ''),
            )!
                .length) {
          if (functions.getItemTypeEnum(
                  (_model.assessApiResult?.jsonBody ?? ''), _model.loopIndex) ==
              AssessmentItemType.fixed) {
            _model.updateMappedAssessmentDataTestStruct(
              (e) => e
                ..updateAssessmentData(
                  (e) => e.add(AssessmentItemDataWrapperStruct(
                    itemType: AssessmentItemType.fixed,
                    itemId: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.fixed.item_id''',
                    ).toString().toString(),
                    typeFixedData: functions.mapAssessmentDataFixed(
                        (_model.assessApiResult?.jsonBody ?? ''),
                        _model.loopIndex),
                    indexInLocal: _model.loopIndex,
                    prompt: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.fixed.prompt''',
                    ).toString().toString(),
                  )),
                ),
            );
            safeSetState(() {});
          } else if (functions.getItemTypeEnum(
                  (_model.assessApiResult?.jsonBody ?? ''), _model.loopIndex) ==
              AssessmentItemType.scale) {
            _model.updateMappedAssessmentDataTestStruct(
              (e) => e
                ..updateAssessmentData(
                  (e) => e.add(AssessmentItemDataWrapperStruct(
                    itemType: AssessmentItemType.scale,
                    itemId: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.scale.item_id''',
                    ).toString().toString(),
                    typeScaleData: functions.mapAssessmentDataScale(
                        (_model.assessApiResult?.jsonBody ?? ''),
                        _model.loopIndex),
                    indexInLocal: _model.loopIndex,
                    prompt: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.scale.prompt''',
                    ).toString().toString(),
                  )),
                ),
            );
            safeSetState(() {});
          } else if (functions.getItemTypeEnum(
                  (_model.assessApiResult?.jsonBody ?? ''), _model.loopIndex) ==
              AssessmentItemType.free) {
            _model.updateMappedAssessmentDataTestStruct(
              (e) => e
                ..updateAssessmentData(
                  (e) => e.add(AssessmentItemDataWrapperStruct(
                    itemType: AssessmentItemType.free,
                    itemId: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.free.item_id''',
                    ).toString().toString(),
                    typeFreeData: functions.mapAssessmentDataFree(
                        (_model.assessApiResult?.jsonBody ?? ''),
                        _model.loopIndex),
                    indexInLocal: _model.loopIndex,
                    prompt: getJsonField(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )?.elementAtOrNull(_model.loopIndex),
                      r'''$.free.prompt''',
                    ).toString().toString(),
                  )),
                ),
            );
            safeSetState(() {});
          } else if (functions.getItemTypeEnum(
                  (_model.assessApiResult?.jsonBody ?? ''), _model.loopIndex) ==
              AssessmentItemType.introduction) {
            _model.updateMappedAssessmentDataTestStruct(
              (e) => e
                ..updateAssessmentData(
                  (e) => e.add(AssessmentItemDataWrapperStruct(
                    itemType: AssessmentItemType.introduction,
                    itemId: random_data.randomString(
                      11,
                      20,
                      true,
                      true,
                      true,
                    ),
                    typeIntroductionData: functions.parseIntroductionJson(
                        ContentDetailMockCall.introductionJSON(
                      ContentDetailMockCall.items(
                        (_model.assessApiResult?.jsonBody ?? ''),
                      )!
                          .elementAtOrNull(_model.loopIndex),
                    )),
                    indexInLocal: _model.loopIndex,
                  )),
                ),
            );
            safeSetState(() {});
          }

          _model.loopIndex = _model.loopIndex + 1;
          safeSetState(() {});
        }
        _model.loopIndex = 0;
        safeSetState(() {});
      }
    });

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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Assessment Dev Space',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Figtree',
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (valueOrDefault<bool>(
              (_model.assessApiResult?.succeeded ?? true),
              true,
            ))
              Flexible(
                child: Builder(
                  builder: (context) {
                    final asessmentItemsGen = _model
                            .mappedAssessmentDataTest?.assessmentData
                            .map((e) => e)
                            .toList()
                            .toList() ??
                        [];

                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _model.assessmentItemsTestController ??=
                                PageController(
                                    initialPage: max(0,
                                        min(0, asessmentItemsGen.length - 1))),
                            onPageChanged: (_) => safeSetState(() {}),
                            scrollDirection: Axis.horizontal,
                            itemCount: asessmentItemsGen.length,
                            itemBuilder: (context, asessmentItemsGenIndex) {
                              final asessmentItemsGenItem =
                                  asessmentItemsGen[asessmentItemsGenIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (false)
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              asessmentItemsGenItem
                                                  .itemType?.name,
                                              'undefined',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              asessmentItemsGenItem.itemId,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              'Select Min: ${valueOrDefault<String>(
                                                asessmentItemsGenItem
                                                    .typeFixedData.selectMin
                                                    .toString(),
                                                '-',
                                              )}',
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              'Select Max: ${valueOrDefault<String>(
                                                asessmentItemsGenItem
                                                    .typeFixedData.selectMax
                                                    .toString(),
                                                '-',
                                              )}',
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  Flexible(
                                    child: Builder(
                                      builder: (context) {
                                        if (valueOrDefault<bool>(
                                          asessmentItemsGenItem.itemType ==
                                              AssessmentItemType.fixed,
                                          false,
                                        )) {
                                          return wrapWithModel(
                                            model: _model
                                                .assessmentTypeFixedModels
                                                .getModel(
                                              asessmentItemsGenItem.itemId,
                                              asessmentItemsGenIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child: AssessmentTypeFixedWidget(
                                              key: Key(
                                                'Keyb1d_${asessmentItemsGenItem.itemId}',
                                              ),
                                              assessmentItemData:
                                                  asessmentItemsGenItem,
                                              prompt:
                                                  asessmentItemsGenItem.prompt,
                                              onSelectCallback:
                                                  (responseID) async {
                                                if (asessmentItemsGenItem
                                                        .typeFixedData
                                                        .selectMax >
                                                    1) {
                                                  if (_model
                                                      .mappedAssessmentDataTest!
                                                      .assessmentData
                                                      .elementAtOrNull(
                                                          asessmentItemsGenIndex)!
                                                      .typeFixedData
                                                      .selectedResponseIds
                                                      .contains(responseID)) {
                                                    // Remove Response From List
                                                    _model
                                                        .updateMappedAssessmentDataTestStruct(
                                                      (e) => e
                                                        ..updateAssessmentData(
                                                          (e) => e[
                                                              asessmentItemsGenIndex]
                                                            ..updateTypeFixedData(
                                                              (e) => e
                                                                ..updateSelectedResponseIds(
                                                                  (e) => e.remove(
                                                                      responseID),
                                                                ),
                                                            ),
                                                        ),
                                                    );
                                                    safeSetState(() {});
                                                  } else {
                                                    // Add Response To List
                                                    _model
                                                        .updateMappedAssessmentDataTestStruct(
                                                      (e) => e
                                                        ..updateAssessmentData(
                                                          (e) => e[
                                                              asessmentItemsGenIndex]
                                                            ..updateTypeFixedData(
                                                              (e) => e
                                                                ..updateSelectedResponseIds(
                                                                  (e) => e.add(
                                                                      responseID),
                                                                ),
                                                            ),
                                                        ),
                                                    );
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  // Clear Response
                                                  _model
                                                      .updateMappedAssessmentDataTestStruct(
                                                    (e) => e
                                                      ..updateAssessmentData(
                                                        (e) => e[
                                                            asessmentItemsGenIndex]
                                                          ..updateTypeFixedData(
                                                            (e) => e
                                                              ..selectedResponseIds =
                                                                  [],
                                                          ),
                                                      ),
                                                  );
                                                  safeSetState(() {});
                                                  // Set Single Response
                                                  _model
                                                      .updateMappedAssessmentDataTestStruct(
                                                    (e) => e
                                                      ..updateAssessmentData(
                                                        (e) => e[
                                                            asessmentItemsGenIndex]
                                                          ..updateTypeFixedData(
                                                            (e) => e
                                                              ..updateSelectedResponseIds(
                                                                (e) => e.add(
                                                                    responseID),
                                                              ),
                                                          ),
                                                      ),
                                                  );
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          );
                                        } else if (valueOrDefault<bool>(
                                          asessmentItemsGenItem.itemType ==
                                              AssessmentItemType.free,
                                          false,
                                        )) {
                                          return AssessmentTypeFreeWidget(
                                            key: Key(
                                                'Keyqen_${asessmentItemsGenIndex}_of_${asessmentItemsGen.length}'),
                                            prompt:
                                                asessmentItemsGenItem.prompt,
                                            assessmentItemData:
                                                asessmentItemsGenItem,
                                            onInputChangeCallback:
                                                (responseString) async {
                                              _model
                                                  .updateMappedAssessmentDataTestStruct(
                                                (e) => e
                                                  ..updateAssessmentData(
                                                    (e) => e[
                                                        asessmentItemsGenIndex]
                                                      ..updateTypeFreeData(
                                                        (e) => e
                                                          ..responseText =
                                                              responseString,
                                                      ),
                                                  ),
                                              );
                                              safeSetState(() {});
                                            },
                                          );
                                        } else if (valueOrDefault<bool>(
                                          asessmentItemsGenItem.itemType ==
                                              AssessmentItemType.scale,
                                          false,
                                        )) {
                                          return AssessmentTypeScaleWidget(
                                            key: Key(
                                                'Keycnf_${asessmentItemsGenIndex}_of_${asessmentItemsGen.length}'),
                                            prompt:
                                                asessmentItemsGenItem.prompt,
                                            assessmentItemData:
                                                asessmentItemsGenItem,
                                            onScaleSelectCallback:
                                                (selectedValue) async {
                                              _model
                                                  .updateMappedAssessmentDataTestStruct(
                                                (e) => e
                                                  ..updateAssessmentData(
                                                    (e) => e[
                                                        asessmentItemsGenIndex]
                                                      ..updateTypeScaleData(
                                                        (e) => e
                                                          ..responseValue =
                                                              selectedValue,
                                                      ),
                                                  ),
                                              );
                                              safeSetState(() {});
                                            },
                                          );
                                        } else if (valueOrDefault<bool>(
                                          asessmentItemsGenItem.itemType ==
                                              AssessmentItemType.introduction,
                                          false,
                                        )) {
                                          return AssessmentTypeIntroductionWidget(
                                            key: Key(
                                                'Keybfv_${asessmentItemsGenIndex}_of_${asessmentItemsGen.length}'),
                                            introductionData:
                                                asessmentItemsGenItem
                                                    .typeIntroductionData,
                                          );
                                        } else {
                                          return Text(
                                            valueOrDefault<String>(
                                              asessmentItemsGenItem
                                                  .itemType?.name,
                                              'Undefined',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: smooth_page_indicator.SmoothPageIndicator(
                                controller: _model
                                        .assessmentItemsTestController ??=
                                    PageController(
                                        initialPage: max(
                                            0,
                                            min(0,
                                                asessmentItemsGen.length - 1))),
                                count: asessmentItemsGen.length,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) async {
                                  await _model.assessmentItemsTestController!
                                      .animateToPage(
                                    i,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                  safeSetState(() {});
                                },
                                effect: smooth_page_indicator.SlideEffect(
                                  spacing: 8.0,
                                  radius: 8.0,
                                  dotWidth: 8.0,
                                  dotHeight: 8.0,
                                  dotColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  activeDotColor:
                                      FlutterFlowTheme.of(context).primary,
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (FFAppState().assessmentDataHolder.skip)
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var _shouldSetState = false;
                            _model.skipApiResponse =
                                await SubmitAssessmentResponseCall.call(
                              itemId: FFAppState()
                                  .assessmentDataHolder
                                  .assessmentData
                                  .elementAtOrNull(
                                      _model.assessmentItemsTestCurrentIndex)
                                  ?.itemId,
                              skip: true,
                              assessmentId: FFAppState()
                                  .assessmentDataHolder
                                  .assessmentId,
                            );

                            _shouldSetState = true;
                            if ((_model.skipApiResponse?.succeeded ?? true)) {
                              if (functions.getAssesementResponseType(
                                      (_model.skipApiResponse?.jsonBody ??
                                          '')) ==
                                  AssessmentResponseActionType.next) {
                                await _model.assessmentItemsTestController
                                    ?.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              } else if (functions.getAssesementResponseType(
                                      (_model.skipApiResponse?.jsonBody ??
                                          '')) ==
                                  AssessmentResponseActionType.complete) {
                                context.pushNamed(
                                    AssessmentResultsWidget.routeName);
                              } else if (functions.getAssesementResponseType(
                                      (_model.skipApiResponse?.jsonBody ??
                                          '')) ==
                                  AssessmentResponseActionType.results) {
                                context.pushNamed(
                                    AssessmentResultsWidget.routeName);
                              } else if (functions.getAssesementResponseType(
                                      (_model.skipApiResponse?.jsonBody ??
                                          '')) ==
                                  AssessmentResponseActionType.jump_to) {
                                await _model.assessmentItemsTestController
                                    ?.animateToPage(
                                  valueOrDefault<int>(
                                    getJsonField(
                                      (_model.skipApiResponse?.jsonBody ?? ''),
                                      r'''$.action.jump.item_id''',
                                    ),
                                    0,
                                  ),
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              } else {
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }
                            if (_shouldSetState) safeSetState(() {});
                          },
                          child: Text(
                            'Skip',
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
                  wrapWithModel(
                    model: _model.submitResponseButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SubmitResponseButtonWidget(
                      assessmentId:
                          FFAppState().assessmentDataHolder.assessmentId,
                      itemData: FFAppState()
                          .assessmentDataHolder
                          .assessmentData
                          .elementAtOrNull(
                              _model.assessmentItemsTestCurrentIndex)!,
                      onItemSubmitted: (responseType, jumpToId) async {
                        if (responseType == AssessmentResponseActionType.next) {
                          await _model.assessmentItemsTestController?.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        } else if (responseType ==
                            AssessmentResponseActionType.complete) {
                          context.pushNamed(AssessmentResultsWidget.routeName);
                        } else if (responseType ==
                            AssessmentResponseActionType.results) {
                          context.pushNamed(AssessmentResultsWidget.routeName);
                        } else if (responseType ==
                            AssessmentResponseActionType.jump_to) {
                          await _model.assessmentItemsTestController
                              ?.animateToPage(
                            _model.mappedAssessmentDataTest!.assessmentData
                                .where((e) => valueOrDefault<bool>(
                                      e.itemId == jumpToId,
                                      false,
                                    ))
                                .toList()
                                .firstOrNull!
                                .indexInLocal,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        } else {
                          return;
                        }
                      },
                    ),
                  ),
                ]
                    .addToStart(SizedBox(height: 8.0))
                    .addToEnd(SizedBox(height: 36.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
