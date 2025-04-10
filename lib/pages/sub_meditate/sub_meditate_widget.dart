import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/modals/modal_simple/modal_simple_widget.dart';
import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_list_recents/chat_list_recents_widget.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'sub_meditate_model.dart';
export 'sub_meditate_model.dart';

class SubMeditateWidget extends StatefulWidget {
  const SubMeditateWidget({super.key});

  static String routeName = 'sub_meditate';
  static String routePath = '/subMeditate';

  @override
  State<SubMeditateWidget> createState() => _SubMeditateWidgetState();
}

class _SubMeditateWidgetState extends State<SubMeditateWidget>
    with TickerProviderStateMixin {
  late SubMeditateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubMeditateModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().currentMood = CurrentMood.six;
      safeSetState(() {});
      // start_meditation
      _model.meditationPlaying = true;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'blurOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1200.0.ms,
            begin: 0.5,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.524, 0),
            end: Offset(0, 0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
            Opacity(
              opacity: 0.7,
              child: ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 8.0,
                    sigmaY: 8.0,
                  ),
                  child: wrapWithModel(
                    model: _model.backgroundImageModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: BackgroundImageWidget(
                      color: CurrentMood.five,
                      borderRadius: 0.0,
                      showOverlay: false,
                    ),
                  ),
                ),
              ).animateOnPageLoad(animationsMap['blurOnPageLoadAnimation']!),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: 510.0,
                maxWidth: 770.0,
              ),
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final guidedMeditation =
                              FFAppState().demoMeditation.toList();

                          return Container(
                            width: double.infinity,
                            height: 200.0,
                            child: CarouselSlider.builder(
                              itemCount: guidedMeditation.length,
                              itemBuilder: (context, guidedMeditationIndex, _) {
                                final guidedMeditationItem =
                                    guidedMeditation[guidedMeditationIndex];
                                return AnimatedOpacity(
                                  opacity: () {
                                    if (_model.carouselCurrentIndex ==
                                        guidedMeditationIndex) {
                                      return 1.0;
                                    } else if (_model.carouselCurrentIndex >
                                        guidedMeditationIndex) {
                                      return 0.15;
                                    } else {
                                      return 0.3;
                                    }
                                  }(),
                                  duration: 300.0.ms,
                                  curve: Curves.easeInOut,
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: AutoSizeText(
                                      valueOrDefault<String>(
                                        guidedMeditationItem.content,
                                        'Welcome to your daily moment of stillness. In the next five minutes, we will use breathwork to calm the body, focus the mind, and align with your goals for today. Let’s begin. ',
                                      ),
                                      minFontSize: 20.0,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Gloock',
                                            letterSpacing: 0.8,
                                            fontWeight: FontWeight.w600,
                                            lineHeight: 1.3,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!),
                                  ),
                                );
                              },
                              carouselController: _model.carouselController ??=
                                  CarouselSliderController(),
                              options: CarouselOptions(
                                initialPage:
                                    max(0, min(0, guidedMeditation.length - 1)),
                                viewportFraction: 0.5,
                                disableCenter: true,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.2,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.vertical,
                                autoPlay: valueOrDefault<bool>(
                                  _model.meditationPlaying,
                                  false,
                                ),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 400),
                                autoPlayInterval:
                                    Duration(milliseconds: (400 + 5000)),
                                autoPlayCurve: Curves.linear,
                                pauseAutoPlayInFiniteScroll: false,
                                onPageChanged: (index, _) async {
                                  _model.carouselCurrentIndex = index;
                                  // rebuild_page

                                  safeSetState(() {});
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 32.0))
                    .addToStart(SizedBox(height: 60.0)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).overlay0
                  ],
                  stops: [0.5, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).overlay30,
                            borderRadius: 8.0,
                            borderWidth: 2.0,
                            buttonSize: 32.0,
                            fillColor: FlutterFlowTheme.of(context).overlay30,
                            icon: Icon(
                              FFIcons.karrowLeft,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '5 Min Peace of Mind',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  'Guide: Jackson Rupert',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).overlay30,
                            borderRadius: 8.0,
                            borderWidth: 2.0,
                            buttonSize: 32.0,
                            fillColor: FlutterFlowTheme.of(context).overlay30,
                            icon: Icon(
                              FFIcons.kclockRewind,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            onPressed: () async {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor:
                                    FlutterFlowTheme.of(context).accent4,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalSimpleWidget(
                                        title: 'Recent Chats',
                                        subtitle:
                                            'Below are some of your interactions with Refuel.',
                                        maxHeight: 700.0,
                                        widgetContent: () =>
                                            ChatListRecentsWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ].addToEnd(SizedBox(height: 104.0)),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).overlay0,
                      FlutterFlowTheme.of(context).secondaryBackground
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.uiPlayToggleModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: UiPlayToggleWidget(
                        isPlaying: _model.meditationPlaying,
                        action: () async {
                          // toggle_value
                          _model.meditationPlaying = !_model.meditationPlaying;
                          safeSetState(() {});
                        },
                      ),
                    ),
                  ].addToEnd(SizedBox(height: 44.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
