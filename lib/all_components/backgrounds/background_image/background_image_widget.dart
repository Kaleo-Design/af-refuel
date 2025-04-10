import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'background_image_model.dart';
export 'background_image_model.dart';

class BackgroundImageWidget extends StatefulWidget {
  const BackgroundImageWidget({
    super.key,
    this.color,
    double? borderRadius,
    bool? showOverlay,
  })  : this.borderRadius = borderRadius ?? 0.0,
        this.showOverlay = showOverlay ?? true;

  final CurrentMood? color;
  final double borderRadius;
  final bool showOverlay;

  @override
  State<BackgroundImageWidget> createState() => _BackgroundImageWidgetState();
}

class _BackgroundImageWidgetState extends State<BackgroundImageWidget>
    with TickerProviderStateMixin {
  late BackgroundImageModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackgroundImageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.4, 1.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.4, 1.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.4, 1.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.4, 1.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: Offset(1.4, 1.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4400.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(90.0, 99.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 4400.0.ms,
            duration: 3600.0.ms,
            begin: Offset(90.0, 99.0),
            end: Offset(-70.0, -90.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4400.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(-90.0, -99.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 4400.0.ms,
            duration: 3600.0.ms,
            begin: Offset(90.0, 99.0),
            end: Offset(-70.0, -90.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 4400.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(-90.0, -99.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 4400.0.ms,
            duration: 3600.0.ms,
            begin: Offset(-90.0, -99.0),
            end: Offset(70.0, 90.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            color: FlutterFlowTheme.of(context).overlay30,
            angle: 1.78,
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(valueOrDefault<double>(
        widget.borderRadius,
        0.0,
      )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(valueOrDefault<double>(
            widget.borderRadius,
            0.0,
          )),
        ),
        child: Stack(
          children: [
            if (widget.color == CurrentMood.one)
              Container(
                width: double.infinity,
                height: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: 3000.0,
                  maxHeight: 3000.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!),
            if (widget.color == CurrentMood.two)
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/bg_night_02.jpg'
                          : 'assets/images/bg_day_clouds_02.jpg',
                    ).image,
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).overlay0,
                        FlutterFlowTheme.of(context).accent1
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(1.0, 0.0),
                      end: AlignmentDirectional(-1.0, 0),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!),
            if (widget.color == CurrentMood.three)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/bg_skye_dark_mode.jpg'
                          : 'assets/images/home_bg_update_light.png',
                    ).image,
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation3']!),
            if (widget.color == CurrentMood.four)
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/afternoon_dark.png'
                          : 'assets/images/afternoon_light.png',
                    ).image,
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation4']!),
            if (widget.color == CurrentMood.five)
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/home_bg_update_dark.png'
                          : 'assets/images/home_bg_update_light.png',
                    ).image,
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).overlay30,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 220.0,
                              height: 220.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 64.0,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent3,
                                  width: 4.0,
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation6']!),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: Container(
                              width: 180.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 64.0,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent3,
                                  width: 4.0,
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation7']!),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 64.0,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                  )
                                ],
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).accent3,
                                  width: 4.0,
                                ),
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'containerOnPageLoadAnimation8']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation5']!),
            if (widget.showOverlay)
              Opacity(
                opacity: 0.7,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation9']!),
              ),
          ],
        ),
      ),
    );
  }
}
