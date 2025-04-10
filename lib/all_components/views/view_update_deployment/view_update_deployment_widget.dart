import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'view_update_deployment_model.dart';
export 'view_update_deployment_model.dart';

class ViewUpdateDeploymentWidget extends StatefulWidget {
  const ViewUpdateDeploymentWidget({super.key});

  @override
  State<ViewUpdateDeploymentWidget> createState() =>
      _ViewUpdateDeploymentWidgetState();
}

class _ViewUpdateDeploymentWidgetState extends State<ViewUpdateDeploymentWidget>
    with TickerProviderStateMixin {
  late ViewUpdateDeploymentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewUpdateDeploymentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.deploymentStatus = FFAppState().onboardingData.deploymentStatus;
      safeSetState(() {});
    });

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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Current Deployment Status',
                        style:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Figtree',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          'Status updated: ${valueOrDefault<String>(
                            dateTimeFormat(
                                "MMMEd",
                                currentUserData
                                    ?.deploymentStatus.dateActive),
                            'N/A',
                          )}',
                          'No rank selected',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                  wrapWithModel(
                    model: _model.uiHeaderSubModel1,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: UiHeaderSubWidget(
                      title: valueOrDefault<String>(
                        FFAppState().onboardingData.deploymentStatus.title,
                        'Select Status',
                      ),
                      subtitle: valueOrDefault<String>(
                        FFAppState()
                            .onboardingData
                            .deploymentStatus
                            .description,
                        'No status selected.',
                      ),
                      header: true,
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ),
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              final deploymentOptions = FFAppState().deploymentOptions.toList();

              return ListView.separated(
                padding: EdgeInsets.fromLTRB(
                  0,
                  4.0,
                  0,
                  16.0,
                ),
                scrollDirection: Axis.vertical,
                itemCount: deploymentOptions.length,
                separatorBuilder: (_, __) => SizedBox(height: 8.0),
                itemBuilder: (context, deploymentOptionsIndex) {
                  final deploymentOptionsItem =
                      deploymentOptions[deploymentOptionsIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().updateOnboardingDataStruct(
                          (e) => e..deploymentStatus = deploymentOptionsItem,
                        );
                        _model.updatePage(() {});
                        Navigator.pop(context);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: (_model.deploymentStatus?.title ==
                                      deploymentOptionsItem.title) ||
                                  (currentUserData?.deploymentStatus.title ==
                                      deploymentOptionsItem.title)
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: (_model.deploymentStatus?.title ==
                                        deploymentOptionsItem.title) ||
                                    (currentUserData?.deploymentStatus.title ==
                                        deploymentOptionsItem.title)
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
                                    deploymentOptionsIndex.toString(),
                                    deploymentOptionsIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: UiHeaderSubWidget(
                                    key: Key(
                                      'Key96o_${deploymentOptionsIndex.toString()}',
                                    ),
                                    title: deploymentOptionsItem.title,
                                    subtitle:
                                        '${deploymentOptionsItem.description}',
                                    header: true,
                                  ),
                                ),
                              ),
                              if ((_model.deploymentStatus?.title ==
                                      deploymentOptionsItem.title) ||
                                  (currentUserData?.deploymentStatus.title ==
                                      deploymentOptionsItem.title))
                                Icon(
                                  FFIcons.kcheckCircleBroken,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation']!),
                              if (!((_model.deploymentStatus?.title ==
                                      deploymentOptionsItem.title) ||
                                  (currentUserData?.deploymentStatus.title ==
                                      deploymentOptionsItem.title)))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 1.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().updateOnboardingDataStruct(
                                        (e) => e
                                          ..deploymentStatus =
                                              deploymentOptionsItem,
                                      );
                                      safeSetState(() {});
                                      // select_deployment
                                      _model.deploymentStatus =
                                          deploymentOptionsItem;
                                      safeSetState(() {});
                                      Navigator.pop(context);
                                    },
                                    text: 'Select',
                                    options: FFButtonOptions(
                                      height: 36.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor:
                                          FlutterFlowTheme.of(context).primary,
                                      hoverBorderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
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
