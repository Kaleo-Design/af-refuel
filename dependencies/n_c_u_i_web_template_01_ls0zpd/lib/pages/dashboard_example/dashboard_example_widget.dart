import '/components/cards/card_dashboard/card_dashboard_widget.dart';
import '/components/lists/list_double_avatar_01/list_double_avatar01_widget.dart';
import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/components/weekly_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'dashboard_example_model.dart';
export 'dashboard_example_model.dart';

class DashboardExampleWidget extends StatefulWidget {
  const DashboardExampleWidget({super.key});

  static String routeName = 'dashboard_example';
  static String routePath = '/dashboardExample';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<DashboardExampleWidget> createState() => _DashboardExampleWidgetState();
}

class _DashboardExampleWidgetState extends State<DashboardExampleWidget>
    with TickerProviderStateMixin {
  late DashboardExampleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardExampleModel());

    animationsMap.addAll({
      'progressBarOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
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
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
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
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
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
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.navContainerModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: NavContainerWidget(
                  widget: () => NavSideMainWidget(
                    selectedNav: 1,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              1.0,
                            ),
                          )
                        ],
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          FFAppConstants.sizeMedium.toDouble(),
                          0.0,
                        )),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.uiTitleModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UiTitleWidget(
                                      title: 'Dashboard',
                                      subTitle:
                                          'Below is the summary of your activity.',
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  wrapWithModel(
                                    model: _model.uiSectionButtonsMediumModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UiSectionButtonsMediumWidget(
                                      titlePositive: 'New Task',
                                      titleNeutral: 'Assign User',
                                      actionPositive: () async {},
                                      actionNeutral: () async {},
                                    ),
                                  ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GridView(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 1;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 2;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 4;
                                              } else {
                                                return 4;
                                              }
                                            }(),
                                            crossAxisSpacing: 12.0,
                                            mainAxisSpacing: 12.0,
                                            childAspectRatio: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 3.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 2.5;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 2.7;
                                              } else {
                                                return 3.0;
                                              }
                                            }(),
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            wrapWithModel(
                                              model: _model.cardDashboardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CardDashboardWidget(
                                                icon: Icon(
                                                  Icons.group_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 36.0,
                                                ),
                                                title: 'Total Users',
                                                value: '3.2k',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.cardDashboardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CardDashboardWidget(
                                                icon: Icon(
                                                  Icons
                                                      .manage_accounts_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 37.0,
                                                ),
                                                title: 'New Users',
                                                value: '357',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.cardDashboardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CardDashboardWidget(
                                                icon: Icon(
                                                  Icons.ssid_chart_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 36.0,
                                                ),
                                                title: 'Total Activities',
                                                value: '7.4k',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.cardDashboardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CardDashboardWidget(
                                                icon: Icon(
                                                  Icons
                                                      .check_circle_outline_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 36.0,
                                                ),
                                                title: 'Completed Tasks',
                                                value: '120',
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 8,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .weeklyCardModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            WeeklyCardWidget(),
                                                      ),
                                                    ),
                                                  AnimatedContainer(
                                                    duration: Duration(
                                                        milliseconds: 100),
                                                    curve: Curves.easeInOut,
                                                    width: double.infinity,
                                                    constraints: BoxConstraints(
                                                      minHeight: 70.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .uiTitleModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                UiTitleWidget(
                                                              title:
                                                                  'Top Taskers',
                                                              subTitle:
                                                                  'Below is a summary of your team\'s activity.',
                                                            ),
                                                          ),
                                                        ),
                                                        SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.userInfoModel1,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                UserInfoWidget(),
                                                                          ),
                                                                          Text(
                                                                            '12/20 tasks completed',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.45,
                                                                      radius:
                                                                          25.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent2,
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'progressBarOnPageLoadAnimation1']!),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.userInfoModel2,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                UserInfoWidget(),
                                                                          ),
                                                                          Text(
                                                                            '12/20 tasks completed',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.36,
                                                                      radius:
                                                                          25.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent2,
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'progressBarOnPageLoadAnimation2']!),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.userInfoModel3,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                UserInfoWidget(),
                                                                          ),
                                                                          Text(
                                                                            '12/20 tasks completed',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                    ),
                                                                    CircularPercentIndicator(
                                                                      percent:
                                                                          0.59,
                                                                      radius:
                                                                          25.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent2,
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'progressBarOnPageLoadAnimation3']!),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        12.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            12.0))
                                                                .addToEnd(SizedBox(
                                                                    width:
                                                                        12.0)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  AnimatedContainer(
                                                    duration: Duration(
                                                        milliseconds: 100),
                                                    curve: Curves.easeInOut,
                                                    width: double.infinity,
                                                    height: 600.0,
                                                    constraints: BoxConstraints(
                                                      minHeight: 70.0,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .uiTitleModel3,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      UiTitleWidget(
                                                                    title:
                                                                        'Your Team',
                                                                    subTitle:
                                                                        'Below is a summary of your team\'s activity.',
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .uiSectionButtonsMediumModel2,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        UiSectionButtonsMediumWidget(
                                                                      titlePositive:
                                                                          'Create',
                                                                      titleNeutral:
                                                                          'Edit',
                                                                      actionPositive:
                                                                          () async {},
                                                                      actionNeutral:
                                                                          () async {},
                                                                    ),
                                                                  ),
                                                                ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .listDoubleAvatar01Model7,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ListDoubleAvatar01Widget(
                                                            menuAction:
                                                                () async {},
                                                            listAction:
                                                                () async {},
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 12.0)),
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Expanded(
                                                flex: 4,
                                                child: wrapWithModel(
                                                  model:
                                                      _model.weeklyCardModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: WeeklyCardWidget(),
                                                ),
                                              ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ].addToEnd(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
