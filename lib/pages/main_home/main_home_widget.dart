import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/cards/card_activity/card_activity_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/views/view_feedback/view_feedback_widget.dart';
import '/all_components/views/view_home_recommended/view_home_recommended_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'main_home_model.dart';
export 'main_home_model.dart';

class MainHomeWidget extends StatefulWidget {
  const MainHomeWidget({super.key});

  static String routeName = 'main_home';
  static String routePath = '/mainHome';

  @override
  State<MainHomeWidget> createState() => _MainHomeWidgetState();
}

class _MainHomeWidgetState extends State<MainHomeWidget> {
  late MainHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainHomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.checkPushPermissions(context);
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.backgroundImageModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: BackgroundImageWidget(
                color: _model.viewHomeRecommendedModel.pageViewCurrentIndex == 2
                    ? CurrentMood.four
                    : CurrentMood.three,
                borderRadius: 0.0,
                showOverlay: true,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.navHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavHeaderWidget(
                      progress: 0.4,
                      progressBG: FlutterFlowTheme.of(context).accent1,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      selectedDate: getCurrentTimestamp,
                      showDarkMode: false,
                      title: 'Welcome,',
                      headerType: HeaderOptions.Welcome,
                      actionIcon: Icon(
                        FFIcons.krefreshCw01,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      action: () async {},
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: wrapWithModel(
                              model: _model.viewHomeRecommendedModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: ViewHomeRecommendedWidget(),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).overlay0,
                                  FlutterFlowTheme.of(context).accent4,
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                ],
                                stops: [0.0, 0.4, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 24.0, 16.0, 12.0),
                                child: wrapWithModel(
                                  model: _model.uiHeaderSubModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: UiHeaderSubWidget(
                                    title: _model.viewHomeRecommendedModel
                                                .pageViewCurrentIndex ==
                                            2
                                        ? 'Afternoon / Evening'
                                        : 'Start Your Day',
                                    subtitle: _model.viewHomeRecommendedModel
                                                .pageViewCurrentIndex ==
                                            2
                                        ? 'What did you learn today?'
                                        : 'Productivity, Rest, Balance',
                                    header: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minHeight: 470.0,
                              maxWidth: 770.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // For demo purposes i'm showing this conditionally from the page view index.
                                if (_model.viewHomeRecommendedModel
                                        .pageViewCurrentIndex !=
                                    2)
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              SubWikiOneWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.cardActivityModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: CardActivityWidget(
                                            icon: Icon(
                                              FFIcons.kbookOpen01,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            title: 'Morning Readiness Check-in',
                                            subTitle:
                                                'Quick check-in on mood, energy, and focus',
                                            details: false,
                                            action: () async {
                                              context.pushNamed(
                                                  SubWikiOneWidget.routeName);
                                            },
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cardActivityModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CardActivityWidget(
                                          icon: Icon(
                                            Icons.directions_run_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                          title: 'Core Stretch and Breath',
                                          subTitle:
                                              'Mobility and tactical breathing routine to prep for training (5-min routine).',
                                          details: true,
                                          action: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cardActivityModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CardActivityWidget(
                                          icon: Icon(
                                            FFIcons.kcertificate02,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                          title:
                                              '\"Why You Chose to Be Here\" ',
                                          subTitle:
                                              'Reflection: Short journal to ground in purpose and motivation',
                                          details: false,
                                          action: () async {
                                            context.pushNamed(
                                                SubActivityDetailsWidget
                                                    .routeName);
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: wrapWithModel(
                                          model: _model.viewFeedbackModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: ViewFeedbackWidget(),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                if (_model.viewHomeRecommendedModel
                                        .pageViewCurrentIndex ==
                                    2)
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Container(),
                                      wrapWithModel(
                                        model: _model.cardActivityModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CardActivityWidget(
                                          icon: Icon(
                                            FFIcons.ksunSetting03,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                          title: 'Afternoon Meditation',
                                          subTitle:
                                              'Take 5 mins to be silent and reset.',
                                          details: false,
                                          action: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.cardActivityModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: CardActivityWidget(
                                          icon: Icon(
                                            FFIcons.khand,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 20.0,
                                          ),
                                          title: 'Team Check',
                                          subTitle: 'Gratitude & Support Log',
                                          details: false,
                                          action: () async {},
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              SubWikiTwoWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.cardActivityModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: CardActivityWidget(
                                            icon: Icon(
                                              FFIcons.kmoonStar,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            title: 'Sleep Prep',
                                            subTitle:
                                                'Guided Tactical Sleep Drill (5-min)',
                                            details: false,
                                            action: () async {},
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                              ]
                                  .divide(SizedBox(height: 12.0))
                                  .addToEnd(SizedBox(height: 124.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navCustomModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: NavCustomWidget(
                  selectedNavParameter: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
