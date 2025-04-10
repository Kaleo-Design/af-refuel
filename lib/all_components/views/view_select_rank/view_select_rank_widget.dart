import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'view_select_rank_model.dart';
export 'view_select_rank_model.dart';

class ViewSelectRankWidget extends StatefulWidget {
  const ViewSelectRankWidget({super.key});

  @override
  State<ViewSelectRankWidget> createState() => _ViewSelectRankWidgetState();
}

class _ViewSelectRankWidgetState extends State<ViewSelectRankWidget>
    with TickerProviderStateMixin {
  late ViewSelectRankModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewSelectRankModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Rank',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Figtree',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.uiHeaderSubModel1,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: UiHeaderSubWidget(
                          title: valueOrDefault<String>(
                            FFAppState().selectedRank.title,
                            'Airmen',
                          ),
                          subtitle: valueOrDefault<String>(
                            '(${valueOrDefault<String>(
                              FFAppState().selectedRank.description,
                              '(E-4)',
                            )})',
                            'Select a rank from below',
                          ),
                          header: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            'Gained rank on ${valueOrDefault<String>(
                              dateTimeFormat("yMMMd",
                                  FFAppState().selectedRank.dateActive),
                              '--',
                            )}',
                            'No rank selected',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
          child: FlutterFlowChoiceChips(
            options: RankType.values
                .map((e) => e.name)
                .toList()
                .map((label) => ChipData(label))
                .toList(),
            onChanged: (val) async {
              safeSetState(() => _model.choiceChipsValue = val?.firstOrNull);
              _model.filter = _model.choiceChipsValue == RankType.Enlisted.name
                  ? RankType.Enlisted
                  : RankType.CO;
              safeSetState(() {});
            },
            selectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).primaryText30,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
              iconColor: FlutterFlowTheme.of(context).primaryText,
              iconSize: 18.0,
              labelPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
              elevation: 0.0,
              borderColor: FlutterFlowTheme.of(context).primaryText,
              borderWidth: 2.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
            unselectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Figtree',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
              iconColor: FlutterFlowTheme.of(context).secondaryText,
              iconSize: 18.0,
              labelPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
              elevation: 0.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 1.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
            chipSpacing: 8.0,
            rowSpacing: 8.0,
            multiselect: false,
            initialized: _model.choiceChipsValue != null,
            alignment: WrapAlignment.start,
            controller: _model.choiceChipsValueController ??=
                FormFieldController<List<String>>(
              [RankType.Enlisted.name],
            ),
            wrapped: false,
          ),
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              final listRanks = FFAppState()
                  .airforceRanks
                  .where((e) => e.rankType == _model.filter)
                  .toList();

              return ListView.separated(
                padding: EdgeInsets.fromLTRB(
                  0,
                  4.0,
                  0,
                  16.0,
                ),
                scrollDirection: Axis.vertical,
                itemCount: listRanks.length,
                separatorBuilder: (_, __) => SizedBox(height: 8.0),
                itemBuilder: (context, listRanksIndex) {
                  final listRanksItem = listRanks[listRanksIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: (FFAppState().selectedRank != null) &&
                                (FFAppState().selectedRank.title ==
                                    listRanksItem.title)
                            ? FlutterFlowTheme.of(context).accent1
                            : FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: (FFAppState().selectedRank != null) &&
                                  (FFAppState().selectedRank.title ==
                                      listRanksItem.title)
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.uiHeaderSubModels2.getModel(
                                  listRanksIndex.toString(),
                                  listRanksIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: UiHeaderSubWidget(
                                  key: Key(
                                    'Keyz99_${listRanksIndex.toString()}',
                                  ),
                                  title: listRanksItem.title,
                                  subtitle: '${listRanksItem.description}',
                                  header: true,
                                ),
                              ),
                            ),
                            if ((FFAppState().selectedRank != null) &&
                                (FFAppState().selectedRank.title ==
                                    listRanksItem.title))
                              Icon(
                                FFIcons.kcheckCircleBroken,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ).animateOnPageLoad(
                                  animationsMap['iconOnPageLoadAnimation']!),
                            if ((FFAppState().selectedRank != null) &&
                                (FFAppState().selectedRank.title !=
                                    listRanksItem.title))
                              Align(
                                alignment: AlignmentDirectional(1.0, 1.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    FFAppState().updateSelectedRankStruct(
                                      (e) => e
                                        ..title = listRanksItem.title
                                        ..description =
                                            listRanksItem.description
                                        ..index = listRanksItem.index
                                        ..dateActive = getCurrentTimestamp,
                                    );
                                    FFAppState().updateOnboardingDataStruct(
                                      (e) => e..militaryRank = listRanksItem,
                                    );
                                    safeSetState(() {});

                                    safeSetState(() {});
                                    Navigator.pop(context);
                                  },
                                  text: 'Select',
                                  options: FFButtonOptions(
                                    height: 36.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hoverBorderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    hoverTextColor:
                                        FlutterFlowTheme.of(context).info,
                                    hoverElevation: 3.0,
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
